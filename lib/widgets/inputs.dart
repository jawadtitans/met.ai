import 'package:flutter/material.dart';

class customeInput extends StatelessWidget {
  final String label;
  final String hintText;
  final double? width;
  final Color border_color;
  final double raduise;
  final bool? is_hantText;
  final TextEditingController controller;
  const customeInput({
    super.key,
    required this.label,
    required this.hintText,
    this.width,
    required this.border_color,
    required this.raduise,
    this.is_hantText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        alignLabelWithHint: false,
        border: InputBorder.none,
        focusColor: Colors.yellowAccent,
        enabled: false,
        hintText: hintText,
        label: Text(label),
        labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        hintStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: border_color,
            width: width!,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(raduise)),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
      ),
    );
  }
}
