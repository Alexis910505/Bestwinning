import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {

  final AssetImage image;
  final String name;


  AddUser({this.image, this.name});

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: widget.image,
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(500),
            ),
            child: Text(
              widget.name,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.0),
            ),
          )
        ],
      ),
    );
  }
}
