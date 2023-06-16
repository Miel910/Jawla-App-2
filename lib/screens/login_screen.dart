import 'package:flutter/material.dart';
import 'package:jawla_app/extension/navigators.dart';

import '../components/buttons/login_buttons.dart';
import '../components/login_text_field.dart';
import '../constants/constants.dart';
import '../my_navigation_bar.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/login_page/login_page_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("/login_page/logo.png"),
                  const SizedBox(height: 20),
                  LoginTextField(
                    hint: "Email",
                    iconName: Icons.email_outlined,
                    controller: emailController,
                  ),
                  LoginTextField(
                    hint: "Password",
                    iconName: Icons.lock_outline_rounded,
                    controller: passwordController,
                    isPassword: true,
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Forgot your password?",
                      style: forgetPasswordStyle,
                    ),
                  ),
                  const SizedBox(height: 20),
                  LoginButton(
                    onPressed: () {
                      context.push(screen: const MyNavigationBar());
                    },
                    text: "Login",
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Divider(
                          height: 40, thickness: 3, color: Colors.grey),
                      Text("Or",
                          style: haveAccountStyle.copyWith(fontSize: 12)),
                      const Divider(
                          height: 40, thickness: 3, color: Colors.grey),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account yet? ",
                        style: haveAccountStyle,
                      ),
                      InkWell(
                        onTap: () {
                          // context.push(screen: const SignUpScreen());
                        },
                        child: Text(
                          "Sign up",
                          style: haveAccountStyle.copyWith(color: primaryColor),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 128),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
