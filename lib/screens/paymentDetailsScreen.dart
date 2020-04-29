import 'package:betswinning/models/bloc.dart';
import 'package:betswinning/package/curved_navigation_bar/curved_navigation_bar.dart';
import 'package:betswinning/screens/profileScreen.dart';
import 'package:betswinning/screens/profitsScreen.dart';
import 'package:betswinning/widgets/curvedNavigationBarWidget.dart';
import 'package:flutter/material.dart';

import 'dashScreen.dart';

class PaymentDetailsScreen extends StatefulWidget {
  @override
  _PaymentDetailsScreenState createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('DETALLES DEL PAGO',style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: (){
          Navigator.of(context).pop();
        }),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text('13/03/2020 - 16:41',style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(14.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('RECIBO',style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('48771600223648', style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Text('TIPO DE PAGO', style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 10.0,
                          height: 10.0,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green
                          ),
                        ),
                        Text('Suscripción Premact 30', style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, left: 20.0),
                    child: Text('REFERENCIA',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0, left: 20.0),
                    child: Text('7859877YJ4030',style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5.0,
              margin: EdgeInsets.only(top: 15.0),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Descripción', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 10.0,),
                            Text('Surebets - Prematch comparison service', style: TextStyle(
                                color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0)
                            )
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 130.0,
                              height: 100.0,
                              margin: EdgeInsets.only(left: 20.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/paypal.png')
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              child: Text('\$ 99 USD',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0
                              ),),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
