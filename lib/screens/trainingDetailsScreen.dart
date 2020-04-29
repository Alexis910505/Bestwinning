
/*import 'package:betswinning/screens/TabBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class TrainingDetailsScreen extends StatefulWidget {
  @override
  _TrainingDetailsScreenState createState() => _TrainingDetailsScreenState();
}

class _TrainingDetailsScreenState extends State<TrainingDetailsScreen>{

  Future<void> _launched;
  String _launchUrl = 'https://youtube.com';

  Future<void>_launchInApp(String url) async{
    if(await canLaunch(url)){
      final bool nativeAppLaunchSucceeded =  await launch(
        url,
        forceSafariVC: false,
        forceWebView: true,
        headers: <String, String>{'header_key': 'header_value'},
      );
      if(!nativeAppLaunchSucceeded){
        await launch(url, forceSafariVC: true);
      }
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 360.0,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          _launched = _launchInApp(_launchUrl);
                        });
                       },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25.0),
                                topLeft: Radius.circular(25.0)
                            )
                        ),
                        child: FutureBuilder(
                          future: _launched,
                            builder: (context, snapshot){
                              if(snapshot.hasError){
                                return Text('Error: ${snapshot.hasError}');
                              }else
                                return Container();
                            }
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.0,),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0)
                        )
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: Text('Que son las surbets',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0
                            ),),
                          ),
                          Expanded(child: Container()),
                          Container(
                            width: 120.0,
                            margin: EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/LogoBets.png')
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 600,
              color: Colors.white,
              child: TabBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
*/