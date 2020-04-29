
import 'package:betswinning/components/modalButtonSheet.dart';
import 'package:betswinning/widgets/curvedNavigationBarWidget.dart';
import 'package:betswinning/widgets/profilsButton.dart';
import 'package:flutter/material.dart';


class ProfitsScreen extends StatefulWidget {
  @override
  _ProfitsScreenState createState() => _ProfitsScreenState();
}

int _page = 0;

class _ProfitsScreenState extends State<ProfitsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('GANANCIAS',style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 25,
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
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 50.0,
                          width: 180.0,
                          padding: EdgeInsets.all(5.0),
                          margin: EdgeInsets.only(bottom: 30.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(14.0),
                                  bottomLeft: Radius.circular(14.0)
                              )
                          ),
                          child: Image.asset('assets/LogoBets.png')
                      ),
                      Text('Ganancias: \$78.500',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                        ),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ProfilsButton(
                            icon: AssetImage('assets/referidos.png'),
                            title: 'Mis referidos',
                            subtitle:'Usuarios inscrito por ti',
                            cont: '28',
                            color: Colors.blue,
                            onTap: (){},
                          ),
                          Expanded(child: Container()),
                          ProfilsButton(
                            icon: AssetImage('assets/mired.png'),
                            title: 'Mi Red',
                            subtitle:'Usuarios de tu red',
                            cont: '79',
                            color: Colors.pinkAccent,
                            onTap: (){},
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ProfilsButton(
                            icon: AssetImage('assets/gananciashoy.png'),
                            title: 'Ganancias de hoy',
                            subtitle:'Ganancias por inscritos',
                            cont: '\$ 78.500',
                            color: Colors.greenAccent,
                            onTap: (){},
                          ),
                          Expanded(child: Container()),
                          ProfilsButton(
                            icon: AssetImage('assets/gananciasdelmes.png'),
                            title: 'Ganancias del mes',
                            subtitle:'Ganancias por inscritos',
                            cont: '28',
                            color: Colors.deepOrange,
                            onTap: (){},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    _onButtonPressed(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(14.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 70.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/solicitar.png')
                                )
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Solicitar retiro',style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                              Text('El dinero será depositado de 24 a 72 horas',style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.white,
                              ),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void _onButtonPressed(context){
  showModalBottomSheet(context: context, builder: (context){
    return ModalButtonSheet(
      title: 'Solicitud de retiro',
      text: 'Como se suele decir, en vez de reinventar la rueda y programar nosotros todo el diseño',
      monto: '\$ 78.500',
      subtitle: 'Valor a retirar',
      image1:  AssetImage('assets/paypal.png'),
      titleImage1: 'Retiro por paypal',
      image2: AssetImage('assets/skrill.png'),
      titleImage2: 'Retiro por skrill',
    );
  });
}