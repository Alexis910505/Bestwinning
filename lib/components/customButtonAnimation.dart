
import 'package:betswinning/package/page_transition.dart';
import 'package:flutter/material.dart';

class CustomButtonAnimation extends StatefulWidget {
  final String label;
  final Color background;
  final Color borderColor;
  final Color fontColor;
  final Function onTap;
  final Widget child;

  CustomButtonAnimation(
      {this.label,
      this.background,
      this.borderColor,
      this.fontColor,
      this.onTap,
      this.child});

  @override
  _CustomButtonAnimationState createState() => _CustomButtonAnimationState();
}

class _CustomButtonAnimationState extends State<CustomButtonAnimation>
    with TickerProviderStateMixin {
  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool _isTextHide = false;


  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 320)
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 32.0)
    .animate(_scaleController)
      ..addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.push(context, PageTransition(
          type: PageTransitionType.fade,
          child: widget.child
        )).then((value){
          _scaleController.reverse().then((e){
            _isTextHide = false;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isTextHide = true;
        });
        _scaleController.forward();
      },
      child: AnimatedBuilder(
          animation: _scaleController,
          builder: (context, child) => Transform.scale(
                scale: _scaleAnimation.value,
                child: Container(
                  height: 63.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: widget.background,
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                          color: widget.borderColor,
                          width: 1)),
                  child: !_isTextHide ? Text(
                    widget.label,
                    style: TextStyle(
                        color: widget.fontColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    ))
                      : Container(),
                ),
              )),
    );
  }
}
