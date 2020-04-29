import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {

  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.arrow_back_ios, size: 35.0, color: isActive ? Colors.greenAccent :Colors.grey);
  }
}
