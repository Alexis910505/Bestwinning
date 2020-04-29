import 'package:betswinning/package/dotted_border.dart';
import 'package:flutter/material.dart';

class ContractDetailsScreen extends StatefulWidget {
  @override
  _ContractDetailsScreenState createState() => _ContractDetailsScreenState();
}

class _ContractDetailsScreenState extends State<ContractDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('CONTRATOS',style: TextStyle(
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Valor del contrato', style: TextStyle(
                          color: Colors.black
                        ),),
                        Text('\$ 650.000', style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                        ),)
                      ],
                    ),
                  ),
                  Expanded(child: Container(),),
                  Container(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Retorno', style: TextStyle(
                            color: Colors.black
                        ),),
                        Text('35%', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80.0,
                    width: 80.0,
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/pedro.png'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: Text('Pedro Ramos Perez', style: TextStyle(
                      color: Colors.orange
                    ),),
                  ),
                  Container(
                      child: Text('Registro de operaciones', style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                      ),)
                  )
                ],
              ),
            ),
            DottedBorder(
              color: Colors.green,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text('Talon Esports - Nova World. LoL - PCS Spring',
                            style: TextStyle(
                              color: Colors.black
                            ),),
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/descargar.png')
                                )
                            ),
                          ),
                          Container(
                            width: 50.0,
                            height: 25.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Text('12.5%', style: TextStyle(
                              color: Colors.black
                            ),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
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
                            margin: EdgeInsets.only(right: 30.0, left: 10.0),
                            child: Text('Casas'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('Mercado'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('Inversión'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('Cuota'),
                          ),
                          Container(
                            child: Text('Utilidad'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
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
                            margin: EdgeInsets.only(right: 30.0, left: 10.0),
                            child: Text('Wplay'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('TO(2.5)'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('\$ 125.890'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('1.90'),
                          ),
                          Container(
                            child: Text('\$ 390.000'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 30.0, left: 10.0),
                            child: Text('Pinnacle'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('TU(5.5)'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('\$ 79.890'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('3.20'),
                          ),
                          Container(
                            child: Text('\$ 391.000'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DottedBorder(
              color: Colors.green,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text('Talon Esports - Nova World. LoL - PCS Spring',
                              style: TextStyle(
                                  color: Colors.black
                              ),),
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/descargar.png')
                                )
                            ),
                          ),
                          Container(
                            width: 50.0,
                            height: 25.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Text('12.5%', style: TextStyle(
                                color: Colors.black
                            ),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
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
                            margin: EdgeInsets.only(right: 30.0, left: 10.0),
                            child: Text('Casas'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('Mercado'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('Inversión'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('Cuota'),
                          ),
                          Container(
                            child: Text('Utilidad'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
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
                            margin: EdgeInsets.only(right: 30.0, left: 10.0),
                            child: Text('Wplay'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('TO(2.5)'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('\$ 125.890'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('1.90'),
                          ),
                          Container(
                            child: Text('\$ 390.000'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 30.0, left: 10.0),
                            child: Text('Pinnacle'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('TU(5.5)'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('\$ 79.890'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30.0),
                            child: Text('3.20'),
                          ),
                          Container(
                            child: Text('\$ 391.000'),
                          ),
                        ],
                      ),
                    ),
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
