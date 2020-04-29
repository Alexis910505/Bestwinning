import 'package:betswinning/screens/profitsScreen.dart';
import 'package:betswinning/screens/zoom_scaffold.dart';
import 'package:flutter/material.dart';

class MemberShipScreen extends StatefulWidget {
  @override
  _MemberShipScreenState createState() => _MemberShipScreenState();
}

class _MemberShipScreenState extends State<MemberShipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('MEMBRESIA',style: TextStyle(
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
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: (){
          Navigator.of(context).pop();
        }),
      ),
      body: Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MemberShipWidget(
                  title: 'Surbet',
                  subtitle: ' Pre macth 30',
                  valor: '99',
                  color:  Colors.green,
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfitsScreen()
                    ));
                  },
                ),
                MemberShipWidget(
                  title: 'Surbet',
                  subtitle: ' Live 30',
                  valor: '170',
                  color:  Colors.red,
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfitsScreen()
                    ));
                  },
                ),
                MemberShipWidget(
                  title: 'Surbet',
                  subtitle: ' P+L 30',
                  valor: '220',
                  color:  Colors.pink,
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfitsScreen()
                    ));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}



final Screen membershipScreen = Screen(
    background: Colors.black,
    title: 'MEMBRESIA',
    titleColor: Colors.greenAccent,
    contentBuilder: (BuildContext context) {
      return Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MemberShipWidget(
                    title: 'Surbet',
                    subtitle: ' Pre macth 30',
                    valor: '99',
                     color:  Colors.green,
                  ),
                  MemberShipWidget(
                    title: 'Surbet',
                    subtitle: ' Live 30',
                    valor: '170',
                    color:  Colors.red,
                  ),
                  MemberShipWidget(
                    title: 'Surbet',
                    subtitle: ' P + L 30',
                    valor: '220',
                    color:  Colors.pink,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });

class MemberShipWidget extends StatelessWidget {

  final String title;
  final String subtitle;
  final String valor;
  final Color color;
  final Function onTap;


  MemberShipWidget({
    this.title,
    this.subtitle,
    this.valor,
    this.color,
    this.onTap
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100.0,
        margin: EdgeInsets.only(top: 30.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(14.0)
        ),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10.0),
              padding: EdgeInsets.all(8.0),
              width: 50.0,
              height: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/copa1.png'))
              ),
            ),
            Text(title, style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
            Text(subtitle, style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
            Expanded(child: Container()),
            Container(
              width: 80.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(14.0),
                      topRight: Radius.circular(14.0)
                  )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(valor, style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                    Text('USD', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
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
