import 'package:flutter/material.dart';

class LessonScreen extends StatefulWidget {
  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  width: 230.0,
                  height: 350.0,
                  margin: EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(25.0)
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                           child: Text('Conociendo que son las surbets',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold
                           ),),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  width: 230.0,
                  height: 350.0,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(25.0)
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                            child: Text('Los Mercados',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  width: 230.0,
                  height: 350.0,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(25.0)
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                            child: Text('Conociendo que son las surbets',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),),
                          )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
