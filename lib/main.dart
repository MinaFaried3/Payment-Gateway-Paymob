import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/modules/payment/payment_cubit.dart';
import 'package:payment/modules/register/register.dart';
import 'package:payment/shared/network/dio.dart';
import 'package:payment/shared/style/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelperPayment.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: defColor),
          useMaterial3: true,
        ),
        home: RegisterScreen(),
      ),
    );
  }
}
