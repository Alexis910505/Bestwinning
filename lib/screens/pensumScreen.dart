import 'package:flutter/material.dart';

class PensumScreen extends StatefulWidget {
  @override
  _PensumScreenState createState() => _PensumScreenState();
}

class _PensumScreenState extends State<PensumScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text('Conociendo q son las surbets',style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10.0),
                    margin: EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1
                        )
                      )
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.play_circle_outline, color: Colors.black,size: 35.0,),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                            child: Text('Conociendo las surbets',style: TextStyle(
                              fontSize: 18.0
                            ),))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10.0),
                    margin: EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey,
                                width: 1
                            )
                        )
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.play_circle_outline, color: Colors.black,size: 35.0,),
                        Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: Text('Mercados deportivos',style: TextStyle(
                                fontSize: 18.0
                            ),))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10.0),
                    margin: EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey,
                                width: 1
                            )
                        )
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.play_circle_outline, color: Colors.black,size: 35.0,),
                        Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: Text('Mirando los Handicap',style: TextStyle(
                                fontSize: 18.0
                            ),))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text('Casa de apuestas',style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10.0),
                    margin: EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey,
                                width: 1
                            )
                        )
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.play_circle_outline, color: Colors.black,size: 35.0,),
                        Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: Text('Conociendo a bet365',style: TextStyle(
                                fontSize: 18.0
                            ),))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
