import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/modules/payment/payment_cubit.dart';
import 'package:payment/modules/payment/toggle.dart';
import 'package:payment/shared/components/components.dart';
import 'package:payment/shared/style/colors.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paymob',
          style: TextStyle(color: defColor),
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {},
        builder: (context, state) => Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    defaultFormField(
                        controller: firstNameController,
                        type: TextInputType.text,
                        validate: (String? value) {
                          if (value!.isEmpty)
                            return "Please Enter Your first name";
                          return null;
                        },
                        label: 'First Name',
                        prefix: Icons.person_2_outlined),
                    defaultFormField(
                        controller: lastNameController,
                        type: TextInputType.text,
                        validate: (String? value) {
                          if (value!.isEmpty)
                            return "Please Enter Your last name";
                          return null;
                        },
                        label: 'Last Name',
                        prefix: Icons.person_2_outlined),
                    defaultFormField(
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        validate: (String? value) {
                          if (value!.isEmpty) return "Please Enter Your email";
                          return null;
                        },
                        label: 'Email',
                        prefix: Icons.email_outlined),
                    defaultFormField(
                        controller: phoneController,
                        type: TextInputType.phone,
                        validate: (String? value) {
                          if (value!.isEmpty) return "Please Enter Your phone";
                          return null;
                        },
                        label: 'Phone',
                        prefix: Icons.phone_outlined),
                    defaultFormField(
                        controller: priceController,
                        type: TextInputType.number,
                        validate: (String? value) {
                          if (value!.isEmpty) return "Please Enter Your price";
                          return null;
                        },
                        label: 'Price',
                        prefix: Icons.price_check),
                    defaultButton(
                        function: () {
                          if (formKey.currentState!.validate()) {
                            navigateTo(
                                context,
                                ToggleScreen(
                                  price: priceController.text,
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  email: emailController.text,
                                  phone: phoneController.text,
                                ));
                          }
                        },
                        text: "Buy Now",
                        radius: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
