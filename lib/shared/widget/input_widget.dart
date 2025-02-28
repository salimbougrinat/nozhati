import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscure;
  final TextInputAction inputAction;
  final void Function() onEditingComplete;
  const InputWidget({
    super.key,
    required this.label,
    required this.obscure,
    required this.keyboardType,
    required this.inputAction,
    required this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(color: Colors.black54),
          filled: true,
          fillColor: Colors.grey[20],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        ),
      ),
    );
  }
}
