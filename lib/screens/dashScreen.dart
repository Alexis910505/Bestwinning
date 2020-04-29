import 'package:betswinning/screens/MainScreen.dart';
import 'package:betswinning/screens/accountInformationScreen.dart';
import 'package:betswinning/screens/menu_screen.dart';
import 'package:betswinning/screens/trainingScreen.dart';
import 'package:betswinning/screens/zoom_scaffold.dart';
import 'package:flutter/material.dart';

import 'profitsScreen.dart';

class DashScreen extends StatefulWidget {
  @override
  _DashScreenState createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {

  final menu = Menu(
    items: [
      MenuItem(id: 'home', title: 'INICIO'),
      MenuItem(id: 'account', title: 'TU CUENTA'),
      MenuItem(id: 'training', title: 'ENTRENAMIENTOS'),
    ],
  );
  var selectedMenuItemId = 'home';
  var activeScreen = mainScreen;
  @override
  Widget build(BuildContext context) {
    return ZoomScaffold(
      menuScreen: MenuScreen(
        menu: menu,
        selectedItemId: selectedMenuItemId,
        onMenuItemSelected: (String itemId) {
          selectedMenuItemId = itemId;
          if (itemId == 'home') {
            setState(() => activeScreen = mainScreen);
          } else if (itemId == 'account') {
            setState(() => activeScreen = accountScreen);
          } else if (itemId == 'training') {
            setState(() => activeScreen = trainingScreen);
          }
        },
      ),
      contentScreen: activeScreen,
    );
  }
}
