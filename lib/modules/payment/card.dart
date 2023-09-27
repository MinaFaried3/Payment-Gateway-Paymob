import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/modules/payment/payment_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(
            'https://accept.paymob.com/api/acceptance/iframes/788534?payment_token=${PaymentCubit.get(context).finalToken!.token}'),
      );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(
        "https://accept.paymob.com/api/acceptance/iframes/788534?payment_token=${PaymentCubit.get(context).finalToken!.token}");
    stdout.writeAll([
      "https://accept.paymob.com/api/acceptance/iframes/788534?payment_token=${PaymentCubit.get(context).finalToken!.token}"
    ]);
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  PaymentCubit.get(context).clearToken();
                  Navigator.of(context).pop();
                },
              ),
            ),
            body: WebViewWidget(
              controller: controller,
            ));
      },
    );
  }
}

/*
5123456789012346
Test Account
 */
