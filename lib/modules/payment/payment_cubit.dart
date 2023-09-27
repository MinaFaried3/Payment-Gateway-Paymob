import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/models/final_token.dart';
import 'package:payment/models/first_token.dart';
import 'package:payment/models/kiosk_model.dart';
import 'package:payment/models/order_id.dart';
import 'package:payment/security_api_key.dart';
import 'package:payment/shared/components/constants.dart';
import 'package:payment/shared/network/dio.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());

  static PaymentCubit get(context) => BlocProvider.of(context);

  FirstToken? firstToken;
  OrderId? orderId;
  FinalToken? finalToken;
  KioskModel? kioskModel;

  Future<void> getFirstToken({
    required String price,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String integrationId,
  }) async {
    DioHelperPayment.postData(url: 'auth/tokens', data: {'api_key': apiKey})
        .then((value) {
      firstToken = FirstToken.fromJson(value.data);
      paymobToken = firstToken!.token!;
      if (kDebugMode) {
        print("First Token : $paymobToken");
      }
      emit(PaymentSuccessState());
      getOrderId(
        price: price,
        firstName: firstName,
        lastName: lastName,
        email: email,
        phone: phone,
        integrationId: integrationId,
      );
    }).catchError((error) {
      emit(PaymentErrorState(error: error.toString()));
      print(error.toString());
    });
  }

  Future<void> getOrderId({
    required String price,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String integrationId,
  }) async {
    DioHelperPayment.postData(url: '/ecommerce/orders', data: {
      "auth_token": paymobToken,
      "delivery_needed": "false",
      "amount_cents": "100540",
      "currency": "EGP",
      "items": [],
    }).then((value) {
      orderId = OrderId.fromJson(value.data);
      paymobOrderId = (orderId!.id!).toString();
      if (kDebugMode) {
        print("paymobOrderId : $paymobOrderId");
      }
      emit(PaymentOrderIdSuccessState());
      getFinalTokenCard(
          price: price,
          firstName: firstName,
          lastName: lastName,
          email: email,
          phone: phone,
          integrationId: integrationId);
    }).catchError((error) {
      emit(PaymentOrderIdErrorState(error: error.toString()));
      print(error.toString());
    });
  }

  Future<void> getFinalTokenCard({
    required String price,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String integrationId,
  }) async {
    DioHelperPayment.postData(
      url: 'acceptance/payment_keys',
      data: {
        "auth_token": paymobToken,
        "expiration": 3600,
        "order_id": paymobOrderId,
        "billing_data": {
          "apartment": "NA",
          "email": email,
          "floor": "NA",
          "first_name": firstName,
          "street": "NA",
          "building": "NA",
          "phone_number": phone,
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "last_name": lastName,
          "state": "NA"
        },
        "amount_cents": price,
        "currency": "EGP",
        "integration_id": int.parse(integrationId),
      },
    ).then((value) {
      finalToken = FinalToken.fromJson(value.data);

      paymobFinalTokenCard = finalToken!.token;
      paymobFinalTokenKiosk = finalToken!.token;

      if (kDebugMode) {
        print("paymobFinalToken : $paymobFinalTokenCard");
      }
      if (integrationId == integrationIdKiosk) {
        getRefCode();
      }
      emit(PaymentFinalTokenSuccessState());
    }).catchError((error) {
      emit(PaymentFinalTokenErrorState(error: error.toString()));
      print(error.toString());
    });
  }

  Future<void> getRefCode() async {
    DioHelperPayment.postData(
      url: 'acceptance/payments/pay',
      data: {
        "source": {"identifier": "AGGREGATOR", "subtype": "AGGREGATOR"},
        "payment_token": paymobFinalTokenKiosk
      },
    ).then((value) {
      kioskModel = KioskModel.fromJson(value.data);
      refCode = kioskModel!.id!.toString();
      if (kDebugMode) {
        print("refCode : $refCode");
      }
      emit(PaymentRefCodeSuccessState());
    }).catchError((error) {
      emit(PaymentRefCodeErrorState(error: error.toString()));
      print(error.toString());
    });
  }

  void clearToken() {
    finalToken = null;
    paymobFinalTokenCard = '';
  }
}
