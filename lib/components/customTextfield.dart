import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Widget icon;
  final Stream stream;
  final Function onChanged;
  final bool obscureText;
  final bool autocorrect;

  CustomTextField(
      {this.label,
      this.icon,
      this.stream,
      this.onChanged,
      this.obscureText = false,
      this.autocorrect = false});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (context, snapshot) {
        return TextField(
          style:
              TextStyle(color: Color(0xFFF234253), fontWeight: FontWeight.bold),
          onChanged: onChanged,
          autocorrect: autocorrect,
          obscureText: obscureText,
          decoration: InputDecoration(
              labelText: label,
              errorText: snapshot.error,
              labelStyle: TextStyle(
                  color: Color(0xFFF234253), fontWeight: FontWeight.bold),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0)),
              suffixIcon: icon),
        );
      },
    );
  }
}
