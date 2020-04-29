import 'package:flutter/material.dart';
import 'package:betswinning/models/slide.dart';

class SlideItem extends StatelessWidget {

  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(slideList[index].imageUrl),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0)
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20.0, left: 200.0),
                          child: Column(
                            children: <Widget>[
                              Text(slideList[index].title, style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0
                              ),),
                              Text(slideList[index].subtitle,style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                              ),)
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          margin: EdgeInsets.only(bottom: 30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(slideList[index].name, style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35.0
                              ),),
                              Text(slideList[index].surname,style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35.0
                              ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)
                      ),
                      color: Colors.black,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 21.0),
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(slideList[index].description,
                        style: TextStyle(
                            color: Colors.white,
                        ),),
                    ),
                  ))
            ],
          ),
        ),
        Positioned(
            bottom: 95,
            left: 10,
            child: RaisedButton(
              color: Colors.transparent,
              onPressed: slideList[index].onTap,
              child: Container(
                width: 180.0,
                height: 50.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Text('Contratar', style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0
                ),),
              ),
            )
        )
      ],
    );
  }
}
