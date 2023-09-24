part of 'payment_cubit.dart';

@immutable
abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

class PaymentSuccessState extends PaymentState {}

class PaymentErrorState extends PaymentState {
  final String error;

  PaymentErrorState({required this.error});
}

class PaymentOrderIdSuccessState extends PaymentState {}

class PaymentOrderIdErrorState extends PaymentState {
  final String error;

  PaymentOrderIdErrorState({required this.error});
}

class PaymentFinalTokenSuccessState extends PaymentState {}

class PaymentFinalTokenErrorState extends PaymentState {
  final String error;

  PaymentFinalTokenErrorState({required this.error});
}

class PaymentRefCodeSuccessState extends PaymentState {}

class PaymentRefCodeErrorState extends PaymentState {
  final String error;

  PaymentRefCodeErrorState({required this.error});
}
