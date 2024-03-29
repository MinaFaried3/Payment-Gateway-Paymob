// To parse this JSON data, do
//
//     final kioskModel = kioskModelFromJson(jsonString);

import 'dart:convert';

KioskModel kioskModelFromJson(String str) =>
    KioskModel.fromJson(json.decode(str));

String kioskModelToJson(KioskModel data) => json.encode(data.toJson());

class KioskModel {
  final int? id;
  final bool? pending;
  final int? amountCents;
  final bool? success;
  final bool? isAuth;
  final bool? isCapture;
  final bool? isStandalonePayment;
  final bool? isVoided;
  final bool? isRefunded;
  final bool? is3DSecure;
  final int? integrationId;
  final int? profileId;
  final bool? hasParentTransaction;
  final Order? order;
  final DateTime? createdAt;
  final List<dynamic>? transactionProcessedCallbackResponses;
  final String? currency;
  final SourceData? sourceData;
  final String? apiSource;
  final dynamic terminalId;
  final int? merchantCommission;
  final dynamic installment;
  final List<dynamic>? discountDetails;
  final bool? isVoid;
  final bool? isRefund;
  final KioskModelData? data;
  final bool? isHidden;
  final PaymentKeyClaims? paymentKeyClaims;
  final bool? errorOccured;
  final bool? isLive;
  final dynamic otherEndpointReference;
  final int? refundedAmountCents;
  final int? sourceId;
  final bool? isCaptured;
  final int? capturedAmount;
  final dynamic merchantStaffTag;
  final DateTime? updatedAt;
  final bool? isSettled;
  final bool? billBalanced;
  final bool? isBill;
  final int? owner;
  final dynamic parentTransaction;

  KioskModel({
    this.id,
    this.pending,
    this.amountCents,
    this.success,
    this.isAuth,
    this.isCapture,
    this.isStandalonePayment,
    this.isVoided,
    this.isRefunded,
    this.is3DSecure,
    this.integrationId,
    this.profileId,
    this.hasParentTransaction,
    this.order,
    this.createdAt,
    this.transactionProcessedCallbackResponses,
    this.currency,
    this.sourceData,
    this.apiSource,
    this.terminalId,
    this.merchantCommission,
    this.installment,
    this.discountDetails,
    this.isVoid,
    this.isRefund,
    this.data,
    this.isHidden,
    this.paymentKeyClaims,
    this.errorOccured,
    this.isLive,
    this.otherEndpointReference,
    this.refundedAmountCents,
    this.sourceId,
    this.isCaptured,
    this.capturedAmount,
    this.merchantStaffTag,
    this.updatedAt,
    this.isSettled,
    this.billBalanced,
    this.isBill,
    this.owner,
    this.parentTransaction,
  });

  factory KioskModel.fromJson(Map<String, dynamic> json) => KioskModel(
        id: json["id"],
        pending: json["pending"],
        amountCents: json["amount_cents"],
        success: json["success"],
        isAuth: json["is_auth"],
        isCapture: json["is_capture"],
        isStandalonePayment: json["is_standalone_payment"],
        isVoided: json["is_voided"],
        isRefunded: json["is_refunded"],
        is3DSecure: json["is_3d_secure"],
        integrationId: json["integration_id"],
        profileId: json["profile_id"],
        hasParentTransaction: json["has_parent_transaction"],
        order: json["order"] == null ? null : Order.fromJson(json["order"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        transactionProcessedCallbackResponses:
            json["transaction_processed_callback_responses"] == null
                ? []
                : List<dynamic>.from(
                    json["transaction_processed_callback_responses"]!
                        .map((x) => x)),
        currency: json["currency"],
        sourceData: json["source_data"] == null
            ? null
            : SourceData.fromJson(json["source_data"]),
        apiSource: json["api_source"],
        terminalId: json["terminal_id"],
        merchantCommission: json["merchant_commission"],
        installment: json["installment"],
        discountDetails: json["discount_details"] == null
            ? []
            : List<dynamic>.from(json["discount_details"]!.map((x) => x)),
        isVoid: json["is_void"],
        isRefund: json["is_refund"],
        data:
            json["data"] == null ? null : KioskModelData.fromJson(json["data"]),
        isHidden: json["is_hidden"],
        paymentKeyClaims: json["payment_key_claims"] == null
            ? null
            : PaymentKeyClaims.fromJson(json["payment_key_claims"]),
        errorOccured: json["error_occured"],
        isLive: json["is_live"],
        otherEndpointReference: json["other_endpoint_reference"],
        refundedAmountCents: json["refunded_amount_cents"],
        sourceId: json["source_id"],
        isCaptured: json["is_captured"],
        capturedAmount: json["captured_amount"],
        merchantStaffTag: json["merchant_staff_tag"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        isSettled: json["is_settled"],
        billBalanced: json["bill_balanced"],
        isBill: json["is_bill"],
        owner: json["owner"],
        parentTransaction: json["parent_transaction"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pending": pending,
        "amount_cents": amountCents,
        "success": success,
        "is_auth": isAuth,
        "is_capture": isCapture,
        "is_standalone_payment": isStandalonePayment,
        "is_voided": isVoided,
        "is_refunded": isRefunded,
        "is_3d_secure": is3DSecure,
        "integration_id": integrationId,
        "profile_id": profileId,
        "has_parent_transaction": hasParentTransaction,
        "order": order?.toJson(),
        "created_at": createdAt?.toIso8601String(),
        "transaction_processed_callback_responses":
            transactionProcessedCallbackResponses == null
                ? []
                : List<dynamic>.from(
                    transactionProcessedCallbackResponses!.map((x) => x)),
        "currency": currency,
        "source_data": sourceData?.toJson(),
        "api_source": apiSource,
        "terminal_id": terminalId,
        "merchant_commission": merchantCommission,
        "installment": installment,
        "discount_details": discountDetails == null
            ? []
            : List<dynamic>.from(discountDetails!.map((x) => x)),
        "is_void": isVoid,
        "is_refund": isRefund,
        "data": data?.toJson(),
        "is_hidden": isHidden,
        "payment_key_claims": paymentKeyClaims?.toJson(),
        "error_occured": errorOccured,
        "is_live": isLive,
        "other_endpoint_reference": otherEndpointReference,
        "refunded_amount_cents": refundedAmountCents,
        "source_id": sourceId,
        "is_captured": isCaptured,
        "captured_amount": capturedAmount,
        "merchant_staff_tag": merchantStaffTag,
        "updated_at": updatedAt?.toIso8601String(),
        "is_settled": isSettled,
        "bill_balanced": billBalanced,
        "is_bill": isBill,
        "owner": owner,
        "parent_transaction": parentTransaction,
      };
}

class KioskModelData {
  final String? klass;
  final int? gatewayIntegrationPk;
  final dynamic ref;
  final dynamic rrn;
  final dynamic amount;
  final dynamic fromUser;
  final String? message;
  final dynamic biller;
  final String? txnResponseCode;
  final int? billReference;
  final dynamic aggTerminal;
  final int? dueAmount;
  final dynamic cashoutAmount;
  final String? paidThrough;
  final String? otp;

  KioskModelData({
    this.klass,
    this.gatewayIntegrationPk,
    this.ref,
    this.rrn,
    this.amount,
    this.fromUser,
    this.message,
    this.biller,
    this.txnResponseCode,
    this.billReference,
    this.aggTerminal,
    this.dueAmount,
    this.cashoutAmount,
    this.paidThrough,
    this.otp,
  });

  factory KioskModelData.fromJson(Map<String, dynamic> json) => KioskModelData(
        klass: json["klass"],
        gatewayIntegrationPk: json["gateway_integration_pk"],
        ref: json["ref"],
        rrn: json["rrn"],
        amount: json["amount"],
        fromUser: json["from_user"],
        message: json["message"],
        biller: json["biller"],
        txnResponseCode: json["txn_response_code"],
        billReference: json["bill_reference"],
        aggTerminal: json["agg_terminal"],
        dueAmount: json["due_amount"],
        cashoutAmount: json["cashout_amount"],
        paidThrough: json["paid_through"],
        otp: json["otp"],
      );

  Map<String, dynamic> toJson() => {
        "klass": klass,
        "gateway_integration_pk": gatewayIntegrationPk,
        "ref": ref,
        "rrn": rrn,
        "amount": amount,
        "from_user": fromUser,
        "message": message,
        "biller": biller,
        "txn_response_code": txnResponseCode,
        "bill_reference": billReference,
        "agg_terminal": aggTerminal,
        "due_amount": dueAmount,
        "cashout_amount": cashoutAmount,
        "paid_through": paidThrough,
        "otp": otp,
      };
}

class Order {
  final int? id;
  final DateTime? createdAt;
  final bool? deliveryNeeded;
  final Merchant? merchant;
  final dynamic collector;
  final int? amountCents;
  final IngData? shippingData;
  final String? currency;
  final bool? isPaymentLocked;
  final bool? isReturn;
  final bool? isCancel;
  final bool? isReturned;
  final bool? isCanceled;
  final dynamic merchantOrderId;
  final dynamic walletNotification;
  final int? paidAmountCents;
  final bool? notifyUserWithEmail;
  final List<Item>? items;
  final String? orderUrl;
  final int? commissionFees;
  final int? deliveryFeesCents;
  final int? deliveryVatCents;
  final String? paymentMethod;
  final dynamic merchantStaffTag;
  final String? apiSource;
  final ExtraClass? data;

  Order({
    this.id,
    this.createdAt,
    this.deliveryNeeded,
    this.merchant,
    this.collector,
    this.amountCents,
    this.shippingData,
    this.currency,
    this.isPaymentLocked,
    this.isReturn,
    this.isCancel,
    this.isReturned,
    this.isCanceled,
    this.merchantOrderId,
    this.walletNotification,
    this.paidAmountCents,
    this.notifyUserWithEmail,
    this.items,
    this.orderUrl,
    this.commissionFees,
    this.deliveryFeesCents,
    this.deliveryVatCents,
    this.paymentMethod,
    this.merchantStaffTag,
    this.apiSource,
    this.data,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        deliveryNeeded: json["delivery_needed"],
        merchant: json["merchant"] == null
            ? null
            : Merchant.fromJson(json["merchant"]),
        collector: json["collector"],
        amountCents: json["amount_cents"],
        shippingData: json["shipping_data"] == null
            ? null
            : IngData.fromJson(json["shipping_data"]),
        currency: json["currency"],
        isPaymentLocked: json["is_payment_locked"],
        isReturn: json["is_return"],
        isCancel: json["is_cancel"],
        isReturned: json["is_returned"],
        isCanceled: json["is_canceled"],
        merchantOrderId: json["merchant_order_id"],
        walletNotification: json["wallet_notification"],
        paidAmountCents: json["paid_amount_cents"],
        notifyUserWithEmail: json["notify_user_with_email"],
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        orderUrl: json["order_url"],
        commissionFees: json["commission_fees"],
        deliveryFeesCents: json["delivery_fees_cents"],
        deliveryVatCents: json["delivery_vat_cents"],
        paymentMethod: json["payment_method"],
        merchantStaffTag: json["merchant_staff_tag"],
        apiSource: json["api_source"],
        data: json["data"] == null ? null : ExtraClass.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "delivery_needed": deliveryNeeded,
        "merchant": merchant?.toJson(),
        "collector": collector,
        "amount_cents": amountCents,
        "shipping_data": shippingData?.toJson(),
        "currency": currency,
        "is_payment_locked": isPaymentLocked,
        "is_return": isReturn,
        "is_cancel": isCancel,
        "is_returned": isReturned,
        "is_canceled": isCanceled,
        "merchant_order_id": merchantOrderId,
        "wallet_notification": walletNotification,
        "paid_amount_cents": paidAmountCents,
        "notify_user_with_email": notifyUserWithEmail,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "order_url": orderUrl,
        "commission_fees": commissionFees,
        "delivery_fees_cents": deliveryFeesCents,
        "delivery_vat_cents": deliveryVatCents,
        "payment_method": paymentMethod,
        "merchant_staff_tag": merchantStaffTag,
        "api_source": apiSource,
        "data": data?.toJson(),
      };
}

class ExtraClass {
  ExtraClass();

  factory ExtraClass.fromJson(Map<String, dynamic> json) => ExtraClass();

  Map<String, dynamic> toJson() => {};
}

class Item {
  final String? name;
  final String? description;
  final int? amountCents;
  final int? quantity;

  Item({
    this.name,
    this.description,
    this.amountCents,
    this.quantity,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        description: json["description"],
        amountCents: json["amount_cents"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "amount_cents": amountCents,
        "quantity": quantity,
      };
}

class Merchant {
  final int? id;
  final DateTime? createdAt;
  final List<String>? phones;
  final List<String>? companyEmails;
  final String? companyName;
  final String? state;
  final String? country;
  final String? city;
  final String? postalCode;
  final String? street;

  Merchant({
    this.id,
    this.createdAt,
    this.phones,
    this.companyEmails,
    this.companyName,
    this.state,
    this.country,
    this.city,
    this.postalCode,
    this.street,
  });

  factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        phones: json["phones"] == null
            ? []
            : List<String>.from(json["phones"]!.map((x) => x)),
        companyEmails: json["company_emails"] == null
            ? []
            : List<String>.from(json["company_emails"]!.map((x) => x)),
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "phones":
            phones == null ? [] : List<dynamic>.from(phones!.map((x) => x)),
        "company_emails": companyEmails == null
            ? []
            : List<dynamic>.from(companyEmails!.map((x) => x)),
        "company_name": companyName,
        "state": state,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "street": street,
      };
}

class IngData {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? street;
  final String? building;
  final String? floor;
  final String? apartment;
  final String? city;
  final String? state;
  final String? country;
  final String? email;
  final String? phoneNumber;
  final String? postalCode;
  final String? extraDescription;
  final String? shippingMethod;
  final int? orderId;
  final int? order;

  IngData({
    this.id,
    this.firstName,
    this.lastName,
    this.street,
    this.building,
    this.floor,
    this.apartment,
    this.city,
    this.state,
    this.country,
    this.email,
    this.phoneNumber,
    this.postalCode,
    this.extraDescription,
    this.shippingMethod,
    this.orderId,
    this.order,
  });

  factory IngData.fromJson(Map<String, dynamic> json) => IngData(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        street: json["street"],
        building: json["building"],
        floor: json["floor"],
        apartment: json["apartment"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        postalCode: json["postal_code"],
        extraDescription: json["extra_description"],
        shippingMethod: json["shipping_method"],
        orderId: json["order_id"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "street": street,
        "building": building,
        "floor": floor,
        "apartment": apartment,
        "city": city,
        "state": state,
        "country": country,
        "email": email,
        "phone_number": phoneNumber,
        "postal_code": postalCode,
        "extra_description": extraDescription,
        "shipping_method": shippingMethod,
        "order_id": orderId,
        "order": order,
      };
}

class PaymentKeyClaims {
  final int? userId;
  final int? amountCents;
  final String? currency;
  final int? integrationId;
  final int? orderId;
  final IngData? billingData;
  final bool? lockOrderWhenPaid;
  final ExtraClass? extra;
  final bool? singlePaymentAttempt;
  final int? exp;
  final String? pmkIp;

  PaymentKeyClaims({
    this.userId,
    this.amountCents,
    this.currency,
    this.integrationId,
    this.orderId,
    this.billingData,
    this.lockOrderWhenPaid,
    this.extra,
    this.singlePaymentAttempt,
    this.exp,
    this.pmkIp,
  });

  factory PaymentKeyClaims.fromJson(Map<String, dynamic> json) =>
      PaymentKeyClaims(
        userId: json["user_id"],
        amountCents: json["amount_cents"],
        currency: json["currency"],
        integrationId: json["integration_id"],
        orderId: json["order_id"],
        billingData: json["billing_data"] == null
            ? null
            : IngData.fromJson(json["billing_data"]),
        lockOrderWhenPaid: json["lock_order_when_paid"],
        extra:
            json["extra"] == null ? null : ExtraClass.fromJson(json["extra"]),
        singlePaymentAttempt: json["single_payment_attempt"],
        exp: json["exp"],
        pmkIp: json["pmk_ip"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "amount_cents": amountCents,
        "currency": currency,
        "integration_id": integrationId,
        "order_id": orderId,
        "billing_data": billingData?.toJson(),
        "lock_order_when_paid": lockOrderWhenPaid,
        "extra": extra?.toJson(),
        "single_payment_attempt": singlePaymentAttempt,
        "exp": exp,
        "pmk_ip": pmkIp,
      };
}

class SourceData {
  final String? type;
  final String? subType;
  final String? pan;

  SourceData({
    this.type,
    this.subType,
    this.pan,
  });

  factory SourceData.fromJson(Map<String, dynamic> json) => SourceData(
        type: json["type"],
        subType: json["sub_type"],
        pan: json["pan"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "sub_type": subType,
        "pan": pan,
      };
}
