import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String label;
  final Color background;
  final Color borderColor;
  final Color fontColor;
  final Function onTap;


  CustomButton({
    this.label,
    this.background,
    this.borderColor,
    this.fontColor,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 63.0,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(14.0),
          border: Border.all(
            color: borderColor,
            width: 1
          )
        ),
        child: Text(
            label,
        style: TextStyle(
          color: fontColor,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
