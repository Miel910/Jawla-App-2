import 'package:flutter/material.dart';
import 'package:jawla_app/extension/navigators.dart';

import '../../components/buttons/my_button.dart';
import '../../components/general/text_field.dart';
import '../../constants/constants.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/login_signup_page/signup_page_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Create New Account Text
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Create New Account", style: headLineStyle1),
                ),
                height24,

                // Textfields
                MyTextField(
                  hint: "Name",
                  iconName: Icons.person_outlined,
                  controller: nameController,
                ),
                MyTextField(
                  hint: "Email",
                  iconName: Icons.email_outlined,
                  controller: emailController,
                ),
                MyTextField(
                  hint: "Phone",
                  iconName: Icons.phone_iphone_outlined,
                  controller: phoneController,
                ),
                MyTextField(
                  hint: "Password",
                  iconName: Icons.lock_outline_rounded,
                  controller: passwordController,
                  isPassword: true,
                ),
                MyTextField(
                  hint: "Confirm password",
                  iconName: Icons.lock_outline_rounded,
                  controller: confirmPasswordController,
                  isPassword: true,
                ),
                height16,
                MyButton(
                  onPressed: () async {
                    // if (emailController.text.isNotEmpty &&
                    //     passwordController.text.isNotEmpty) {
                    //   if (emailController.text.isValidEmail) {
                    //     final response = await loginAccount(body: {
                    //       "name": nameController.text,
                    //       "email": emailController.text,
                    //       "Phone Number": phoneController.text,
                    //       "password": passwordController.text==
                    //           confirmPasswordController.text,
                    //     });
                    //     print(response.body);
                    //   }
                    // }

                    // confirmPasswordController.text == passwordController.text
                    //     ? ScaffoldMessenger.of(context).showSnackBar(
                    //         const SnackBar(
                    //           content: Text("Password does not match"),
                    //         ),
                    //       )
                    //     :
                    context.push(screen: LoginScreen());
                  },
                  text: "Create",
                ),
                height24,

                // Already have an account? Inkwell
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: haveAccountStyle,
                    ),
                    InkWell(
                      onTap: () {
                        context.push(screen: LoginScreen());
                      },
                      child: Text(
                        "Login",
                        style: haveAccountStyle.copyWith(color: primaryColor),
                      ),
                    ),
                  ],
                ),
                height96
              ],
            ),
          ),
        ),
      ),
    );
  }
}
