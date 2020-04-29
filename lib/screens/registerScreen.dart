import 'package:betswinning/components/buttonLoginAnimation.dart';
import 'package:betswinning/components/customButton.dart';
import 'package:betswinning/models/bloc.dart';
import 'package:betswinning/package/searchable_dropdown.dart';
import 'package:betswinning/screens/registerCodeScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                          SizedBox(height: 10.0,),
                          Text('Por favor confierme el código de su país y su número de teléfono',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20.0
                              )),
                          SizedBox(height: 40.0,),
                          Container(
                            margin: EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 85.0,
                                  child: Row(
                                    children: <Widget>[
                                      Text('+'),
                                      Container(
                                        child: Expanded(
                                          child: SearchableDropdown(
                                            items:bloc.codes.map((item) {
                                              return new DropdownMenuItem<Code>(
                                                  child: Text(item.code), value: item);
                                            }).toList(),
                                            isExpanded: true,
                                            value: bloc.selectedValue,
                                            isCaseSensitiveSearch: true,
                                            searchHint: new Text(
                                              'Seleccione el código del país',
                                              style: new TextStyle(fontSize: 20),
                                            ),
                                            onChanged: (value) {
                                              setState(() {
                                                bloc.selectedValue = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                TextWidget(
                                  stream: bloc.phone,
                                  onChanged: bloc.changePhone,
                                  keyboardType: TextInputType.phone,
                                ),
                              ],
                            ),
                          ),

                          CustomButton(
                            label:"Registrarse",
                            fontColor: Colors.white,
                            background: Colors.green,
                            borderColor: Colors.greenAccent,
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RegisterCodeScreen()
                              ));
                            },
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

class TextWidget extends StatefulWidget {

  final Stream stream;
  final Function onChanged;
  final String labelText;
  final bool obscureText;
  final bool autocorrect;
  final TextInputType keyboardType;


  TextWidget({
    this.stream,
    this.onChanged,
    this.labelText,
    this.autocorrect = false,
    this.obscureText = false,
    this.keyboardType
  });

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      margin: EdgeInsets.only(left: 20.0),
      child: StreamBuilder(
        stream: widget.stream,
        builder: (context, snapshot){
          return TextField(
            onChanged: widget.onChanged,
            autocorrect: widget.autocorrect,
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
                labelText: widget.labelText,
                errorText: snapshot.error
            ),
          );
        },
      ),
    );
  }
}