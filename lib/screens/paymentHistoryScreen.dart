import 'package:betswinning/models/bloc.dart';
import 'package:betswinning/package/curved_navigation_bar/curved_navigation_bar.dart';
import 'package:betswinning/screens/paymentDetailsScreen.dart';
import 'package:betswinning/screens/profitsScreen.dart';
import 'package:betswinning/widgets/curvedNavigationBarWidget.dart';
import 'package:flutter/material.dart';

import 'dashScreen.dart';

class PaymentHistoryScreen extends StatefulWidget {
  @override
  _PaymentHistoryScreenState createState() => _PaymentHistoryScreenState();
}

class _PaymentHistoryScreenState extends State<PaymentHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('HISTORIAL DE PAGO',style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: (){
         Navigator.pop(context);
        }),
      ),
      bottomNavigationBar: CurvedNavigationBarWidget(),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 20.0, left: 10.0),
                      child: Text('Marzo 2020', style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),)
                  ),
                  Card(
                    elevation: 5.0,
                    margin: EdgeInsets.only(top: 10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0)
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black,
                                    width: 1
                                  )
                                )
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 10.0,
                                    height: 10.0,
                                    margin: EdgeInsets.only(right: 10.0, left: 10.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green
                                    ),
                                  ),
                                  Text('Suscripción Premact 30',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Expanded(child: Container()),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => PaymentDetailsScreen()
                                      ));
                                    },
                                    child: Container(
                                      child: Row(
                                        children: <Widget>[
                                      Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('\$ 99 USD', style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold
                                          ),),
                                          Text('13/03/2020', style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                      ),
                                        SizedBox(width: 10.0,),
                                        Icon(Icons.arrow_forward_ios, color: Colors.black,)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Referencia: 7859877YJ4030', style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                        ),),
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Text('Vencimiento:', style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold
                                              ),),
                                              Text('13/03/2020', style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    margin: EdgeInsets.only(right: 15.0),
                                    child: Text('Aprobados',style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
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
          ],
        ),
      ),
    );
  }
}
