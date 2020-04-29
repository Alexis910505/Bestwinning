import 'package:betswinning/models/slide.dart';
import 'package:betswinning/package/dotted_border.dart';
import 'package:betswinning/package/page_transition.dart';
import 'package:betswinning/screens/gettingStatedScreen.dart';
import 'package:betswinning/screens/membershipScreen.dart';
import 'package:betswinning/screens/preMatchScreen.dart';
import 'package:betswinning/screens/profileScreen.dart';
import 'package:betswinning/screens/zoom_scaffold.dart';
import 'package:betswinning/widgets/addUsser.dart';
import 'package:betswinning/widgets/appBarAction.dart';
import 'package:betswinning/widgets/slideItem.dart';
import 'package:betswinning/widgets/tools.dart';
import 'package:flutter/material.dart';



final Screen mainScreen = Screen(
    background: Colors.black,
    actions: [AppBarAction()],
    contentBuilder: (BuildContext context) {
      return Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.09,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProfileScreen()
                              ));
                            },
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/gabriel.png'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Positioned(
                              bottom: -10,
                              right: 1,
                              child: Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Icon(Icons.add),
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Bienvenido',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Gabriel Urena Chacon',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        width: 80.0,
                        alignment: Alignment.center,
                        child: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Icon(
                              Icons.local_post_office,
                              size: 40.0,
                              color: Colors.white,
                            ),
                            Positioned(
                                top: -4,
                                right: 1,
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Trader BetsWinning',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          showReview(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Column(
                            children: <Widget>[
                              DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(50),
                                padding: EdgeInsets.all(6),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  child: Container(
                                    height: 70.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 35.0,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Agregar Trader',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0),
                              )
                            ],
                          ),
                        ),
                      ),
                      AddUser(
                        image:  AssetImage('assets/pedro.png'),
                        name: 'Pre macht',
                      ),
                      AddUser(
                        image:  AssetImage('assets/siervo.png'),
                        name: 'Pre macht',
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(0.0),
                        padding: EdgeInsets.all(6),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: Text('Y34585M',
                              style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 40.0,
                                fontWeight: FontWeight.bold
                              ),),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Text('Código referido',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0
                        ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text('Herramientas',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, right: 20.0, top: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Tools(
                              textColor:'Surebets',
                              text1:' pre macth',
                              cont: '30',
                              color: Colors.red,
                              onTap: (){
                                Navigator.push(context, PageTransition(
                                    type: PageTransitionType.fade,
                                    child: PreMatchScreen()
                                )).then((value){
                                });
                              },
                            ),
                            SizedBox(height: 5.0,),
                            Tools(
                              textColor:'Surebets',
                              text1:' pre macth + Live',
                              cont: '30',
                              color: Colors.greenAccent,
                              onTap: (){
                                Navigator.pushReplacement(context, PageTransition(
                                    type: PageTransitionType.fade,
                                    child: MemberShipScreen()
                                )).then((value){
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Tools(
                              textColor:'Surebets',
                              text1:' pre macth',
                              cont: '30',
                              color: Colors.red,
                              onTap: (){},
                            ),
                            SizedBox(height: 5.0,),
                            Tools(
                              textColor:'Surebets',
                              text1:' pre macth + Live',
                              cont: '30',
                              color: Colors.red,
                              onTap: (){},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text('Ultimas Operaciones',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  height: 300,
                  width: 300,
                  margin: EdgeInsets.only(left: 20.0, top:20.0 ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/home.jpg'),fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(14.0)
                  ),
                )
              ],
            ),
          ],
        ),
      );
    });



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


