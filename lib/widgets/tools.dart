import 'package:flutter/material.dart';



class Tools extends StatefulWidget {

  final String textColor;
  final String text1;
  final String cont;
  final Function onTap;
  final Color color;

  Tools({this.textColor, this.text1, this.cont, this.onTap, this.color});

  @override
  _ToolsState createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
          margin: EdgeInsets.only(left: 10.0,),
          width: 320 ,
          height: 60,
          decoration: BoxDecoration(
              color:Colors.black ,
              borderRadius: BorderRadius.circular(14.0)
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                  child: Image.asset('assets/copa1.png')),
              Text(widget.textColor, style: TextStyle(color: Colors.blue, fontSize: 15.0),),
              Text(widget.text1, style: TextStyle(color: Colors.white, fontSize: 15.0),),
              Expanded(child: Container()),
              Container(
                height: 20,
                width: 20,
                margin: EdgeInsets.only(right: 7.0),
                decoration: BoxDecoration(
                  color: widget.color,
                    border: Border.all(
                        color: Colors.blue,
                        width: 1),
                  shape:  BoxShape.circle
                ),
              ),
              Text( widget.cont, style: TextStyle(color: Colors.greenAccent, fontSize: 15.0),),
              SizedBox(width: 10.0,)
            ],
          )
      ),
    );
  }
}