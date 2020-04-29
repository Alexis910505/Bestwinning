import 'package:flutter/material.dart';
import 'package:betswinning/screens/lessonScreen.dart';
import 'package:betswinning/screens/descriptionScreen.dart';
import 'package:betswinning/screens/pensumScreen.dart';

class TabBarWidget extends StatefulWidget {
  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0.0,
          bottom: TabBar(
              isScrollable: true,
              controller: controller,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              indicator: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(25.0)
              ),
              tabs: [
                Tab(text: "Descripción",),
                Tab(text: "Lecciones",),
                Tab(text: "Pensum",),
              ]
          ),
        ),
        body: TabBarView(
            controller: controller,
            children: [
              DescriptionScreen(),
              LessonScreen(),
              PensumScreen()
            ]
        ),
      ),
    );
  }
}
