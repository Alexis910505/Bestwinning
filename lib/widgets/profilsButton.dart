import 'package:flutter/material.dart';

class ProfilsButton extends StatefulWidget {

  final ImageProvider icon;
  final String title;
  final String subtitle;
  final String cont;
  final Color color;
  final Function onTap;


  ProfilsButton({
    this.icon,
    this.title,
    this.subtitle,
    this.cont,
    this.color,
    this.onTap
  });

  @override
  _ProfilsButtonState createState() => _ProfilsButtonState();
}

class _ProfilsButtonState extends State<ProfilsButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0)
        ),
        child: Container(
          width: 170.0,
          margin: EdgeInsets.only(top: 2.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: widget.icon
                      )
                  ),
                ),
                Text(widget.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0
                  ),),
                Text(widget.subtitle,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0
                  ),),
                SizedBox(height: 5.0,),
                Text(widget.cont,
                  style: TextStyle(
                      color: widget.color,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
