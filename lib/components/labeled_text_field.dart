import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obsecureText;

  const LabeledTextField(
      {super.key,
      required this.icon,
      required this.hintText,
      this.obsecureText = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent, width: 3),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          padding: EdgeInsets.all(8),
          child: Icon(
            icon,
            color: Colors.blue,
            size: 35,
          ),
        ),
        Expanded(
          child: TextField(
            obscureText: obsecureText,
            decoration: InputDecoration(
                border: const OutlineInputBorder(), hintText: hintText),
          ),
        )
      ],
    );
  }
}
