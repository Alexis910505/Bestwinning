import 'package:betswinning/screens/contractDetailsScreen.dart';
import 'package:betswinning/screens/gettingStatedScreen.dart';
import 'package:betswinning/widgets/curvedNavigationBarWidget.dart';
import 'package:flutter/material.dart';

class ContractScreen extends StatefulWidget {
  @override
  _ContractScreenState createState() => _ContractScreenState();
}

class _ContractScreenState extends State<ContractScreen> {
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
      bottomNavigationBar: CurvedNavigationBarWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showReview(context);
        },
        tooltip: 'Increment',
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white,),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContractDetailsScreen()
                ));
              },
              child: Card(
                  elevation: 5.0,
                  margin: EdgeInsets.only(top: 50.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0)
                  ),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 10.0, bottom: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Text('Valor del contrato',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),),
                                                Text('\$ 650.000',style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25.0
                                                ),)
                                              ],
                                            ),
                                            Expanded(child: Container(),),
                                            Column(
                                              children: <Widget>[
                                                Text('Retorno',style: TextStyle(
                                                  color: Colors.grey,
                                                ),),
                                                Container(
                                                  width: 40.0,
                                                  height: 20.0,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius: BorderRadius.circular(5.0)
                                                  ),
                                                  child: Text('35%',style: TextStyle(
                                                    color: Colors.white,
                                                  ),),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                            child: Text('Pedro Ramos Perez',style: TextStyle(
                                                color: Colors.orange
                                            ),)),
                                        Expanded(child: Container()),
                                        Container(
                                            child: Text('24 Operaciones',style: TextStyle(
                                                color: Colors.grey
                                            ),))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(14.0),
                                    bottomLeft: Radius.circular(14.0)
                                )
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/contratosIcon.png')
                                      )
                                  ),
                                ),
                                Text('\$ 1.650.000', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),),
                                Expanded(child: Container()),
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5.0)
                                  ),
                                  child: Text('P', style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  ),),
                                ),
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  margin: EdgeInsets.only(left: 5.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5.0)
                                  ),
                                  child: Text('L', style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  ),),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  )),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContractDetailsScreen()
                ));
              },
              child: Stack(
                children: <Widget>[
                  Card(
                      elevation: 5.0,
                      margin: EdgeInsets.only(top: 50.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)
                      ),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 10.0, bottom: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Column(
                                                  children: <Widget>[
                                                    Text('Valor del contrato',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                      ),),
                                                    Text('\$ 650.000',style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 25.0
                                                    ),)
                                                  ],
                                                ),
                                                Expanded(child: Container(),),
                                                Column(
                                                  children: <Widget>[
                                                    Text('Retorno',style: TextStyle(
                                                      color: Colors.grey,
                                                    ),),
                                                    Container(
                                                      width: 40.0,
                                                      height: 20.0,
                                                      alignment: Alignment.center,
                                                      decoration: BoxDecoration(
                                                          color: Colors.green,
                                                          borderRadius: BorderRadius.circular(5.0)
                                                      ),
                                                      child: Text('35%',style: TextStyle(
                                                        color: Colors.white,
                                                      ),),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 10.0,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 5.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                                child: Text('Pedro Ramos Perez',style: TextStyle(
                                                    color: Colors.orange
                                                ),)),
                                            Expanded(child: Container()),
                                            Container(
                                                child: Text('24 Operaciones',style: TextStyle(
                                                    color: Colors.grey
                                                ),))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(14.0),
                                        bottomLeft: Radius.circular(14.0)
                                    )
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/contratosIcon.png')
                                        )
                                      ),
                                    ),
                                    Text('\$ 1.650.000', style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Expanded(child: Container()),
                                    Container(
                                      width: 30.0,
                                      height: 30.0,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(5.0)
                                      ),
                                      child: Text('P', style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0
                                      ),),
                                    ),
                                    Container(
                                      width: 30.0,
                                      height: 30.0,
                                      margin: EdgeInsets.only(left: 5.0),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(5.0)
                                      ),
                                      child: Text('L', style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0
                                      ),),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                      )),
                  Positioned(
                    bottom: 0.0,
                      child: Container(
                        width: 371.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: Color(0xBD000000),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/pedro.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('Pedro Ramos Perez', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),),
                            Container(
                              margin: EdgeInsets.only(right: 100.0),
                              child: ButtonBar(
                                children: <Widget>[
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star_half,color: Colors.yellow,),
                                  Icon(Icons.star_border,color: Colors.grey,)
                                ],
                              ),
                            ),
                            Container(
                              width: 140.0,
                              height: 30.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0)
                                ),
                              ),
                              child: Text('FINALIZADO',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future <bool> showReview(context){
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          backgroundColor: Colors.transparent,
          child: GettingStartedScreen(),
        );
      }
  );
}