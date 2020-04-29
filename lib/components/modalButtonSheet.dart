import 'package:betswinning/models/bloc.dart';
import 'package:betswinning/screens/paymentHistoryScreen.dart';
import 'package:flutter/material.dart';

class ModalButtonSheet extends StatefulWidget {

  final String title;
  final String text;
  final String subtitle;
  final String monto;
  final ImageProvider image1;
  final ImageProvider image2;
  final String titleImage1;
  final String titleImage2;


  ModalButtonSheet({
    this.title,
    this.text,
    this.subtitle,
    this.monto,
    this.image1,
    this.image2,
    this.titleImage1,
    this.titleImage2
  });

  @override
  _ModalButtonSheetState createState() => _ModalButtonSheetState();
}

class _ModalButtonSheetState extends State<ModalButtonSheet> {
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
              Text(widget.title,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                ),),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Text(widget.text,
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
                      child: Text(widget.subtitle,
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
                    child: Text(widget.monto,style: TextStyle(
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
                          builder: (context) => PaymentHistoryScreen()
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
                                    image: widget.image1
                                )
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 10.0),
                            child: Text(widget.titleImage1,
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
                          builder: (context) => PaymentHistoryScreen()
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
                                    image: widget.image2
                                )
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5.0),
                            child: Text(widget.titleImage2,
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
