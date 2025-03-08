import 'package:flutter/material.dart';
import '../../shared/constant/app_color.dart';
import '../../shared/widget/button_widget.dart';
import '../../shared/widget/input_widget.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Text(
                  "Sign-in",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                InputWidget(
                  label: "Email or phone number",
                  obscure: false,
                  keyboardType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  onEditingComplete: () {},
                ),
                InputWidget(
                  label: "Password",
                  obscure: true,
                  keyboardType: TextInputType.visiblePassword,
                  inputAction: TextInputAction.done,
                  onEditingComplete: () {},
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().primaryColor,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor().primaryColor,
                      decorationThickness: 2,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                ButtonWidget(
                  size: Size(MediaQuery.of(context).size.width, 60),
                  label: "Sign-in",
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('home_screen');
                  },
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('signup_screen');
                      },
                      child: Text(
                        "Sign-up",
                        style: TextStyle(
                          color: AppColor().primaryColor,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColor().primaryColor,
                          decorationThickness: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
