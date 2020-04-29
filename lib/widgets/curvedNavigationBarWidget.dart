import 'package:betswinning/models/bloc.dart';
import 'package:betswinning/package/curved_navigation_bar/curved_navigation_bar.dart';
import 'package:betswinning/screens/contractScreen.dart';
import 'package:betswinning/screens/dashScreen.dart';
import 'package:betswinning/screens/notificationScreen.dart';
import 'package:betswinning/screens/profileScreen.dart';
import 'package:betswinning/screens/profitsScreen.dart';
import 'package:flutter/material.dart';

class CurvedNavigationBarWidget extends StatefulWidget {
  @override
  _CurvedNavigationBarWidgetState createState() => _CurvedNavigationBarWidgetState();
}


class _CurvedNavigationBarWidgetState extends State<CurvedNavigationBarWidget> {
  int _page = 0;
  bool notification = false;

  @override
  Widget build(BuildContext context) {
    return  CurvedNavigationBar(
      index: 0,
      height: 50.0,
      items: <Widget>[
        Icon(Icons.assignment, size: 30, color: Colors.white,),
        Icon(Icons.attach_money, size: 30, color: Colors.white),
        Icon(Icons.home, size: 30, color: Colors.white),
        Icon(Icons.notifications, size: 30, color: notification ? Colors.red : Colors.white ),
        Icon(Icons.perm_identity, size: 30, color: Colors.white),
      ],
      color: Colors.black,
      buttonBackgroundColor: Colors.black,
      backgroundColor: Colors.transparent,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        setState(() {
          _page = index;
          print(_page);
          switch(_page){
            case 0:
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ContractScreen()
              ));
              break;
            case 1:
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfitsScreen()
              ));
              break;
            case 2:
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DashScreen()
              ));
              break;
            case 3:
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NotificationScreen()
              ));
              break;
            case 4:
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfileScreen()
              ));

              break;
          }
        });
      },
    );
  }
}
