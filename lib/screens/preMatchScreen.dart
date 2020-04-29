import 'package:betswinning/widgets/curvedNavigationBarWidget.dart';
import 'package:flutter/material.dart';

class PreMatchScreen extends StatefulWidget {
  @override
  _PreMatchScreenState createState() => _PreMatchScreenState();
}

class _PreMatchScreenState extends State<PreMatchScreen> {


  final menuScreenKey = GlobalKey(debugLabel: 'MenuScreen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: menuScreenKey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('PRE PARTIDOS',style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
        ),
        actions: <Widget>[
          Container(
            width: 120.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/LogoBets.png')
                )
            ),
          ),
          SizedBox(width: 30.0,)
        ],
      ),
      bottomNavigationBar: CurvedNavigationBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 186.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/cabecera.jpg')
                    ),
                ),
                child: Container(
                  margin: EdgeInsets.only(right: 30.0, bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(child: Container()),
                            Stack(
                              overflow: Overflow.visible,
                              children: <Widget>[
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/pedro.png'),
                                          fit: BoxFit.cover)),
                                ),
                                Positioned(
                                  right: -40.0,
                                    child: Container(
                                      height: 50.0,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage('assets/gabriel.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                )
                              ],
                            ),
                            Container(
                              height: 50.0,
                              width: 50.0,
                              margin: EdgeInsets.only(left: 30.0, right: 20.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/siervo.png'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 38.0,
                        width: 170.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(25.0)
                        ),
                        child: Column(
                          children: <Widget>[
                            Text('Traders',style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                            ),),
                            Text('Recomendados',style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                              )
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Text('25%', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                        ),),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 18.0, right: 18.0,bottom: 20.0),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Colors.grey
                        ),
                        bottom: BorderSide(
                          color: Colors.grey
                        ),

                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Philadelphia Fusion - Washington Justice OW. [OW]',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              Expanded(child: Container()),
                              Text('1 m',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0
                              ), )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 5.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/logo_redes.png')
                                        )
                                    ),
                                  ),
                                  Text('1.90', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text('Team win 1',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text('16 Apr 14:00', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                              Expanded(child: Container()),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    child: Text('25 %',style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      _onButtonPressed(context);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10.0),
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          color: Colors.deepPurple,
                                          borderRadius: BorderRadius.circular(25.0)
                                      ),
                                      child: Text('Hockey[1firt time]', style: TextStyle(
                                          color: Colors.white
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(child: Container()),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/betplay.png')
                                        )
                                    ),
                                  ),
                                  Text('3.90', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text('Team win 2',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text('16 Apr 14:00', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Colors.grey
                          ),
                        )
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Philadelphia Fusion - Washington Justice OW. [OW]',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0
                              ),),
                            Expanded(child: Container()),
                            Text('1 m',style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0
                            ), )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/bwin.png')
                                        )
                                    ),
                                  ),
                                  Text('1.90', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text('Team win 1',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text('16 Apr 14:00', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                              Expanded(child: Container()),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    child: Text('5 %',style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      _onButtonPressed(context);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10.0),
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(25.0)
                                      ),
                                      child: Text('Futbol', style: TextStyle(
                                          color: Colors.white
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(child: Container()),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/1xbet.png')
                                        )
                                    ),
                                  ),
                                  Text('3.90', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text('Team win 2',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text('16 Apr 14:00', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Colors.grey
                          ),

                        )
                    ),
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Philadelphia Fusion - Washington Justice OW. [OW]',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0
                              ),),
                            Expanded(child: Container()),
                            Text('1 m',style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0
                            ), )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 100.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/codere.png')
                                        )
                                    ),
                                  ),
                                  Text('1.90', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text('Team win 1',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text('16 Apr 14:00', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                              Expanded(child: Container()),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    child: Text('5 %',style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      _onButtonPressed(context);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10.0),
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(25.0)
                                      ),
                                      child: Text('Futbol', style: TextStyle(
                                          color: Colors.white
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(child: Container()),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 100.0,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/mijugada.png')
                                        )
                                    ),
                                  ),
                                  Text('3.90', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text('Team win 2',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text('16 Apr 14:00', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Colors.grey
                          ),
                        )
                    ),
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Philadelphia Fusion - Washington Justice OW. [OW]',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0
                              ),),
                            Expanded(child: Container()),
                            Text('1 m',style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0
                            ), )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 100.0,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/bet365.png')
                                        )
                                    ),
                                  ),
                                  Text('1.90', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text('Team win 1',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text('16 Apr 14:00', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                              Expanded(child: Container()),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    child: Text('5 %',style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      _onButtonPressed(context);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10.0),
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(25.0)
                                      ),
                                      child: Text('Futbol', style: TextStyle(
                                          color: Colors.white
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(child: Container()),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 100.0,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/rivalo.png')
                                        )
                                    ),
                                  ),
                                  Text('3.90', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text('Team win 2',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text('16 Apr 14:00', style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
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
        height: 475.0,
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
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    decoration: BoxDecoration(
                         image: DecorationImage(
                            image: AssetImage('assets/calculadoracuadrado.jpg'),
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.0),
                            topLeft: Radius.circular(25.0)
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('25%',style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 45.0
                        ),),
                        SizedBox(height: 20.0,),
                        Text('Philadelphia Fusion - Washington',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        Text('Justice QW.[OW] Overwatch',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 20.0,),
                        Text('RETORNO',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        ),),
                        Text('\$ 578.000',style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                        ),),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -120,
                      right: 90.0,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                          color: Colors.black,
                                          width: 1
                                    )
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('1.90',style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25.0
                                      ),),
                                      Text('\$ 135.000',style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0
                                      )),
                                      Text('Team win 1',style: TextStyle(
                                          color: Colors.pink,
                                      )),
                                      Text('16 Apr 14:00'),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/rivalo.png')
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 40.0,),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                          color: Colors.black,
                                          width: 1
                                      )
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('1.90',style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0
                                      ),),
                                      Text('\$ 135.000',style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0
                                      )),
                                      Text('Team win 1',style: TextStyle(
                                        color: Colors.pink,
                                      )),
                                      Text('16 Apr 14:00'),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/bet365.png')
                                      )
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                  )
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 100.0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('INVERSION',style:TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0
                      ),),
                      SizedBox(height:10.0 ,),
                      Text('\$ 500.000',style:TextStyle(
                          color: Colors.black,
                          fontSize: 15.0
                      ),)
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