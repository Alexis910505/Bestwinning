import 'package:betswinning/components/buttonLoginAnimation.dart';
import 'package:betswinning/components/customButton.dart';
import 'package:betswinning/models/bloc.dart';
import 'package:betswinning/package/searchable_dropdown.dart';
import 'package:betswinning/screens/dashScreen.dart';
import 'package:betswinning/screens/registerScreen.dart';
import 'package:betswinning/widgets/textField.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegisterCodeScreen extends StatefulWidget {
  @override
  _RegisterCodeScreenState createState() => _RegisterCodeScreenState();
}

class _RegisterCodeScreenState extends State<RegisterCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/home1.jpg'),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter
                )
            ),
            child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(height: 20.0,),
                    Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                            ],
                          ),
                        )
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
                      height: MediaQuery.of(context).size.height * 0.73,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0)
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10.0,),
                          Text('Se envió un SMS con el código de activación al número telefónico +53 57458924 ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20.0
                              )),
                          SizedBox(height: 40.0,),
                          Container(
                            margin: EdgeInsets.only(bottom: 30.0),
                            child: Column(
                              children: <Widget>[
                                myText(
                                  labelText: 'Código',
                                  autocorrect: true,
                                ),
                                Text('Volver a enviar SMS en: 0:56 ')
                              ],
                            )
                          ),
                          CustomButton(
                            label:"Entrar",
                            fontColor: Colors.white,
                            background: Colors.green,
                            borderColor: Colors.greenAccent,
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DashScreen()
                              ));
                            },
                          ),
                          Expanded(child: Container()),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RegisterScreen()
                              ));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 30.0),
                              alignment: Alignment.center,
                                child: Text('¿No es su número?', style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0
                                ),)),
                          )
                        ],
                      ),
                    )
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}

