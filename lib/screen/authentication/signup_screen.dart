import 'package:flutter/material.dart';
import 'package:nozhati/shared/widget/button_widget.dart';
import 'package:nozhati/shared/widget/input_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                  "Sign-up",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                InputWidget(
                  label: "Full Name",
                  obscure: false,
                  keyboardType: TextInputType.name,
                  inputAction: TextInputAction.next,
                  onEditingComplete: () {},
                ),
                InputWidget(
                  label: "Email",
                  obscure: false,
                  keyboardType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  onEditingComplete: () {},
                ),
                InputWidget(
                  label: "Phone number",
                  obscure: false,
                  keyboardType: TextInputType.phone,
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
                InputWidget(
                  label: "Confirm Password",
                  obscure: true,
                  keyboardType: TextInputType.visiblePassword,
                  inputAction: TextInputAction.done,
                  onEditingComplete: () {},
                ),
                SizedBox(height: 10),
                ButtonWidget(label: "Sign-up", onPressed: () {}),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign-in",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.green,
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
