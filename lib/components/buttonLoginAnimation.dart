import 'package:betswinning/package/page_transition.dart';
import 'package:flutter/material.dart';

class ButtonLoginAnimation extends StatefulWidget {

  final String label;
  final Color background;
  final Color borderColor;
  final Color fontColor;
  final Function onTap;
  final Widget child;


  ButtonLoginAnimation({this.label, this.background, this.borderColor,
      this.fontColor, this.onTap, this.child});

  @override
  _ButtonLoginAnimationState createState() => _ButtonLoginAnimationState();
}

class _ButtonLoginAnimationState extends State<ButtonLoginAnimation> with TickerProviderStateMixin{

  AnimationController _positionController;
  Animation<double> _positionAnimation;

  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool _isLogin = false;
  bool _isIconHide = false;

  @override
  void initState() {
    super.initState();

    _positionController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400)
    );

    _positionAnimation = Tween<double>(begin: 10.0, end: 300.0)
    .animate(_positionController)
    ..addStatusListener((status){
      if(status == AnimationStatus.completed){
          setState(() {
            _isIconHide = true;
          });
        _scaleController.forward();
      }
    });

    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100)
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 32.0)
        .animate(_scaleController)
      ..addStatusListener((status){
        if(status == AnimationStatus.completed){
            Navigator.push(context, PageTransition(
              type: PageTransitionType.fade,
              child: widget.child
            ));
        }
      });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          _isLogin = true;
        });
        _positionController.forward();
      },
      child: Container(
        height: 63.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.background,
          borderRadius: BorderRadius.circular(14.0)
        ),
        child:!_isLogin ? Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.label,
            style: TextStyle(
              color: widget.fontColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(width: 10.0,),
            Icon(Icons.arrow_forward, color: widget.fontColor, size: 32.0,)
          ],
        ): Stack(
          children: <Widget>[
            AnimatedBuilder(
              animation: _positionController,
              builder: (context, child) => Positioned(
                left: _positionAnimation.value,
                top: 5.0,
                child: AnimatedBuilder(
                  animation: _scaleController,
                  builder: (context, build) => Transform.scale(
                      scale: _scaleAnimation.value,
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: widget.borderColor,
                          shape: BoxShape.circle
                        ),
                        child: !_isIconHide ? Icon(Icons.arrow_forward, color: widget.fontColor, size: 32.0,)
                        : Container()
                      ),
                ))),
            )
          ],
        )
      ),
    );
  }
}
