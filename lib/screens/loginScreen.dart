import 'package:betswinning/components/buttonLoginAnimation.dart';
import 'package:betswinning/components/customTextfield.dart';
import 'package:betswinning/models/bloc.dart';
import 'package:betswinning/screens/dashScreen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 32.0,
                                  ),
                                  onPressed: (){
                                    Navigator.pop(context);
                                  }
                              ),
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
                          Text('Bienvenido',
                          style: TextStyle(
                            color: Color(0xFFF032f42),
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                          ),),
                          Text('Complete para continuar',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25.0
                          )),
                          SizedBox(height: 40.0,),
                          CustomTextField(
                            stream: bloc.email,
                            onChanged: bloc.changeEmail,
                            label: "Correo",
                            icon: Icon(Icons.alternate_email, size: 27, color: Color(0xFFF032f41)),
                          ),
                          SizedBox(height: 10.0,),
                          CustomTextField(
                            stream: bloc.pass,
                            onChanged: bloc.changePass,
                            label: "Contraseña",
                            obscureText: true,
                            icon: Icon(Icons.https, size: 27, color: Color(0xFFF032f41) ,),
                          ),
                          SizedBox(height: 40.0,),
                          ButtonLoginAnimation(
                            label:"Entrar",
                            fontColor: Colors.white,
                            background: Colors.green,
                            borderColor: Colors.greenAccent,
                            child: DashScreen(),
                          ),
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
