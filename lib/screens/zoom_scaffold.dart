import 'package:flutter/material.dart';

class ZoomScaffold extends StatefulWidget {
  final Widget menuScreen;
  final Screen contentScreen;

  ZoomScaffold({this.menuScreen, this.contentScreen});

  @override
  _ZoomScaffoldState createState() => _ZoomScaffoldState();
}

class _ZoomScaffoldState extends State<ZoomScaffold> with TickerProviderStateMixin{

  MenuController menuController;
  Curve scaleDownCurve = Interval(0.0, 0.3,curve: Curves.easeOut);
  Curve scaleUpCurve = Interval(0.0, 1.0,curve: Curves.easeOut);
  Curve slideOutCurve = Interval(0.0, 1.0,curve: Curves.easeOut);
  Curve slideInCurve = Interval(0.0, 1.0,curve: Curves.easeOut);



  @override
  void initState() {
    super.initState();
    menuController = MenuController(
      vsync: this,
    )
      ..addListener(() => setState((){}));
  }


  @override
  void dispose() {
    menuController.dispose();
    super.dispose();

  }

  createContentDisplay() {
    return zoomAndSlideContent(Container(
      decoration: BoxDecoration(color: widget.contentScreen.background),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {
            menuController.toggle();
          }),
          actions: widget.contentScreen.actions,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text(
            widget.contentScreen.title,
            style: TextStyle(
              color: widget.contentScreen.titleColor,
              fontFamily: 'bebas-neue',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: widget.contentScreen.contentBuilder(context),
      ),
    ));
  }

  zoomAndSlideContent(Widget context) {

    var slidePercent, scalePercent;
    switch(menuController.state){
      case MenuState.closed:
        slidePercent = 0.0;
        scalePercent = 0.0;
        break;
      case MenuState.open:
        slidePercent = 1.0;
        scalePercent = 1.0;
        break;
      case MenuState.opening:
        slidePercent = slideOutCurve.transform(menuController.percentOpen);
        scalePercent = scaleDownCurve.transform(menuController.percentOpen);
        break;
      case MenuState.closing:
        slidePercent = slideInCurve.transform(menuController.percentOpen);
        scalePercent = scaleUpCurve.transform(menuController.percentOpen);
        break;
    }

    final slideAmount = 275.0 * slidePercent;
    final contentScale = 1.0 - (0.2 * scalePercent);
    final cornerRadius = 10.0 * menuController.percentOpen;


    return Transform(
        transform: Matrix4.translationValues(slideAmount, 0.0, 0.0)..scale(contentScale,contentScale),
        alignment: Alignment.centerLeft,
        child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x44000000),
                    offset: Offset(0.0, 5.0),
                    blurRadius: 20.0,
                    spreadRadius:10.0,
                  ),
                ]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(cornerRadius),
              child: context,
            )
        )

    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[widget.menuScreen, createContentDisplay()],
    );
  }
}

class ZoomScaffoldMenuController extends StatefulWidget {

  final ZoomScaffoldBuilder builder;

  ZoomScaffoldMenuController({this.builder});

  @override
  ZoomScaffoldMenuControllerState createState() => ZoomScaffoldMenuControllerState();
}

class ZoomScaffoldMenuControllerState extends State<ZoomScaffoldMenuController> {

  MenuController menuController;

  @override
  void initState() {
    super.initState();

    menuController = getMenuController(context);
    menuController.addListener(_onMenuControllerChange);
  }


  @override
  void dispose() {
    menuController.removeListener(_onMenuControllerChange);
    super.dispose();
  }

  getMenuController(BuildContext context){
    final scaffoldState = context.ancestorStateOfType(
        TypeMatcher<_ZoomScaffoldState>()
    ) as _ZoomScaffoldState;
    return scaffoldState.menuController;
  }

  _onMenuControllerChange(){
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context,getMenuController(context));
  }
}

typedef Widget ZoomScaffoldBuilder(
    BuildContext context,
    MenuController menuController
    );

class Screen {
  final String title;
  final Color background;
  final WidgetBuilder contentBuilder;
  final  List<Widget>  actions;
  final Color titleColor;

  Screen({
    this.title = '',
    this.background,
    this.contentBuilder,
    this.actions,
    this.titleColor = Colors.white
  });
}

class MenuController extends ChangeNotifier {

  final TickerProvider vsync;
  final AnimationController _animationController;
  MenuState state = MenuState.closed;

  MenuController({this.vsync}): _animationController = AnimationController(vsync: vsync){
    _animationController
      ..duration = Duration(milliseconds: 250 )
      ..addListener((){notifyListeners();
      })
      ..addStatusListener((AnimationStatus status){
        switch(status){
          case AnimationStatus.forward:
            state = MenuState.opening;
            break;
          case AnimationStatus.reverse:
            state = MenuState.closing;
            break;
          case AnimationStatus.completed:
            state = MenuState.open;
            break;
          case AnimationStatus.dismissed:
            state = MenuState.closed;
            break;
        }
        notifyListeners();
      });
  }


  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  get percentOpen {
    return _animationController.value;
  }



  open(){
    _animationController.forward();
  }

  close(){
    _animationController.reverse();
  }

  toggle(){
    if(state == MenuState.open)
      close();
    else if(state == MenuState.closed)
      open();
  }
}

enum MenuState{
  closed,
  opening,
  open,
  closing,
}

