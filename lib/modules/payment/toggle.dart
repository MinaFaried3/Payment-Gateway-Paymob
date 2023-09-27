import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/modules/payment/card.dart';
import 'package:payment/modules/payment/kiosk.dart';
import 'package:payment/modules/payment/payment_cubit.dart';
import 'package:payment/security_api_key.dart';
import 'package:payment/shared/components/components.dart';
import 'package:payment/shared/style/colors.dart';

class ToggleScreen extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String price;

  const ToggleScreen({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                getToggleItem(
                  image: 'card.png',
                  text: 'Card',
                  onPressed: () {
                    PaymentCubit.get(context).getFirstToken(
                        price: price,
                        firstName: firstName,
                        lastName: lastName,
                        email: email,
                        phone: phone,
                        integrationId: integrationIdCard);
                    navigateTo(context, const CardScreen());
                  },
                ),
                getToggleItem(
                  image: 'ref_code.png',
                  text: 'RefCode',
                  onPressed: () {
                    PaymentCubit.get(context).getFirstToken(
                        price: price,
                        firstName: firstName,
                        lastName: lastName,
                        email: email,
                        phone: phone,
                        integrationId: integrationIdKiosk);
                    navigateTo(context, const KioskScreen());
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget getToggleItem(
    {required String image,
    required String text,
    required VoidCallback onPressed}) {
  return Expanded(
      child: InkWell(
    onTap: onPressed,
    child: Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 2, color: defColor),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/$image',
            width: 500,
            height: 300,
            fit: BoxFit.contain,
          ),
          Text(
            "Pay With $text",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: defColor,
                fontStyle: FontStyle.italic),
          )
        ],
      ),
    ),
  ));
}
