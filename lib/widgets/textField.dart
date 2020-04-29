import 'package:flutter/material.dart';

class myText extends StatefulWidget {

  final Stream stream;
  final Function onChanged;
  final String labelText;
  final bool obscureText;
  final bool autocorrect;
  final TextInputType keyboardType;


  myText({
    this.stream,
    this.onChanged,
    this.labelText,
    this.autocorrect = false,
    this.obscureText = false,
    this.keyboardType
  });

  @override
  _myTextState createState() => _myTextState();
}

class _myTextState extends State<myText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: double.infinity,
      margin: EdgeInsets.only(top: 5.0),
      alignment: Alignment.topLeft,
      child: StreamBuilder(
        stream: widget.stream,
        builder: (context, snapshot){
          return Container(
            child: TextField(
              onChanged: widget.onChanged,
              autocorrect: widget.autocorrect,
              obscureText: widget.obscureText,
              keyboardType: widget.keyboardType,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: widget.labelText,
                  errorText: snapshot.error
              ),
            ),
          );
        },
      ),
    );
  }
}