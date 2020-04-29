import 'package:betswinning/models/bloc.dart';
import 'package:betswinning/screens/dashScreen.dart';
import 'package:betswinning/screens/trainingDetailsScreen.dart';
import 'package:betswinning/screens/zoom_scaffold.dart';
import 'package:flutter/material.dart';

final Screen trainingScreen = Screen(
    background: Colors.black,
    title: 'ENTRENAMIENTOS',
    titleColor: Colors.greenAccent,
    contentBuilder: (BuildContext context) {
      return Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    _onButtonPressed(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/trasiningImage.jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter
                          ),
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0, left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text('Traiding deportivo',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white
                                ),),
                                Text('Aprende los fundamentos básicos',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        color: Colors.white
                                    ))
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(child: Container(),),
                              Text('23',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.white
                                  )),
                              Text('Lecciones',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.white
                                  )),
                              Expanded(child: Container(),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    });

class TrainingButtonWidget extends StatefulWidget {
  @override
  _TrainingButtonWidgetState createState() => _TrainingButtonWidgetState();
}

class _TrainingButtonWidgetState extends State<TrainingButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 400.0,
        color: Color(0xFF737373),
        child: Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0)
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 10.0,
                width: 120.0,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(14.0)
                ),
              ),
              Text('Pago Trader',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                ),),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Text('Como se suele decir, en vez de reinventar la rueda y programar nosotros todo el diseño',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0
                  ),),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 20.0, left: 10.0),
                      child: Text('Pagar por paypal',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0
                        ),)),
                  Container(
                    width:  MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.07,
                    margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            color: Colors.blue,
                            width: 2
                        )
                    ),
                    child: Text('\$ 650.000',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        bloc.selectedRadio = 1;
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DashScreen()
                      ));
                    },
                    child: Container(
                      width:  MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.07,
                      margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              color: Colors.blue,
                              width: 2
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                              value: 1,
                              groupValue: bloc.selectedRadio,
                              onChanged: (value){
                                setState(() {
                                  bloc.selectedRadio = value;
                                });
                              }
                          ),
                          Container(
                            height: 50,
                            width: 120.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:  AssetImage('assets/paypal.png')
                                )
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 10.0),
                            child: Text('Retiro por paypal',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        bloc.selectedRadio = 2;
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DashScreen()
                      ));
                    },
                    child: Container(
                      width:  MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.07,
                      margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              color: Colors.blue,
                              width: 2
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                              value: 2,
                              groupValue: bloc.selectedRadio,
                              onChanged: (value){
                                setState(() {
                                  bloc.selectedRadio = value;
                                });
                              }
                          ),
                          Container(
                            height: 50,
                            width: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/card.png')
                                )
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5.0),
                            child: Text('Pagar con tarjeta de credito',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _onButtonPressed(context){
  showModalBottomSheet(context: context, builder: (context){
    return TrainingButtonWidget();

  });
}