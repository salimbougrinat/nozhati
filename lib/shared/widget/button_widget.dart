import 'package:flutter/material.dart';

import '../constant/app_color.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatefulWidget {
  final String label;
  final Size? size;
  late Color? backgroundColor;
  late Color? foregroundColor;
  final void Function() onPressed;

  ButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
    this.size,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  void initState() {
    super.initState();
    if (widget.backgroundColor == null) {
      setState(() {
        widget.backgroundColor = AppColor().primaryColor;
        widget.foregroundColor = AppColor().primaryFontColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: widget.size,
          backgroundColor: widget.backgroundColor,
          foregroundColor: widget.foregroundColor,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          widget.label,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
