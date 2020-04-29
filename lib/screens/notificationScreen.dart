import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('NOTIFICACIONES',style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: (){
          Navigator.pop(context);
        }),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
              GestureDetector(
                onTap: (){
                  print('notificacion');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: Colors.grey,
                              width: 1
                          ),
                          bottom: BorderSide(
                              color: Colors.grey,
                              width: 1
                          )
                      )
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 10,
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                height: 90.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('assets/pedro.png'),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Pedro Ramos Perez',style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                    ),),

                                    Text('Recomencación de Trader Pre macht ',style: TextStyle(
                                      color: Colors.grey,
                                    ),),
                                    SizedBox(height: 5.0,),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.timer,color: Colors.grey,),
                                        SizedBox(width: 5.0,),
                                        Text('8 h', style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: (){
                            _onButtonPressed(context);
                          },
                          child: Container(
                            alignment: Alignment.topRight,
                            child: Text('...', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            GestureDetector(
              onTap: (){
                print('notificacion');
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.grey,
                            width: 1
                        ),
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 1
                        )
                    )
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5.0),
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/pedro.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Pedro Ramos Perez',style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  ),),

                                  Text('Recomencación de Trader Pre macht ',style: TextStyle(
                                    color: Colors.grey,
                                  ),),
                                  SizedBox(height: 5.0,),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.timer,color: Colors.grey,),
                                      SizedBox(width: 5.0,),
                                      Text('8 h', style: TextStyle(
                                          color: Colors.grey
                                      ),)
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          print('menu');
                        },
                        child: Container(
                          alignment: Alignment.topRight,
                          child: Text('...', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print('notificacion');
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.grey,
                            width: 1
                        ),
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 1
                        )
                    )
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5.0),
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/pedro.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Pedro Ramos Perez',style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  ),),

                                  Text('Recomencación de Trader Pre macht ',style: TextStyle(
                                    color: Colors.grey,
                                  ),),
                                  SizedBox(height: 5.0,),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.timer,color: Colors.grey,),
                                      SizedBox(width: 5.0,),
                                      Text('8 h', style: TextStyle(
                                          color: Colors.grey
                                      ),)
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          print('menu');
                        },
                        child: Container(
                          alignment: Alignment.topRight,
                          child: Text('...', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print('notificacion');
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.grey,
                            width: 1
                        ),
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 1
                        )
                    )
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5.0),
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/pedro.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Pedro Ramos Perez',style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  ),),

                                  Text('Recomencación de Trader Pre macht ',style: TextStyle(
                                    color: Colors.grey,
                                  ),),
                                  SizedBox(height: 5.0,),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.timer,color: Colors.grey,),
                                      SizedBox(width: 5.0,),
                                      Text('8 h', style: TextStyle(
                                          color: Colors.grey
                                      ),)
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          print('menu');
                        },
                        child: Container(
                          alignment: Alignment.topRight,
                          child: Text('...', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print('notificacion');
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.grey,
                            width: 1
                        ),
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 1
                        )
                    )
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5.0),
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/pedro.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Pedro Ramos Perez',style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  ),),

                                  Text('Recomencación de Trader Pre macht ',style: TextStyle(
                                    color: Colors.grey,
                                  ),),
                                  SizedBox(height: 5.0,),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.timer,color: Colors.grey,),
                                      SizedBox(width: 5.0,),
                                      Text('8 h', style: TextStyle(
                                          color: Colors.grey
                                      ),)
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          print('menu');
                        },
                        child: Container(
                          alignment: Alignment.topRight,
                          child: Text('...', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _onButtonPressed(context){
  showModalBottomSheet(context: context, builder: (context){
    return SingleChildScrollView(
      child: Container(
        height: 150.0,
        color: Color(0xFF737373),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0)
              )
          ),
          child: Column(
            children: <Widget>[
              Text('Notificación:',style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
                fontSize: 35.0
              ),),
              Text('Pedro Ramos Perez',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),),

              Text('Recomencación de Trader Pre macht ',style: TextStyle(
                color: Colors.grey,
              ),),
              GestureDetector(
                onTap: (){
                  print('eliminado');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.delete),
                      Text('Eliminar notificación')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  });
}