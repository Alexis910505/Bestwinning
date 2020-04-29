import 'package:betswinning/screens/zoom_scaffold.dart';
import 'package:flutter/material.dart';



class MenuScreen extends StatefulWidget {

  final Menu menu;
  final String selectedItemId;
  final Function(String) onMenuItemSelected;

  MenuScreen({
    Key key,
    this.menu,
    this.onMenuItemSelected,
    this.selectedItemId,
}):super(key: key);
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  AnimationController titleAnimationController;
  double selectorYTop =280.0;
  double selctorYBottom = 330;

  setSelectedRenderBox(RenderBox newRenderBox) async{
    final newYTop = newRenderBox.localToGlobal(const Offset(0.0, 0.0)).dy;
    final newYBottom = newYTop + newRenderBox.size.height;
    if(newYTop != selectorYTop) {
      setState(() {
        selectorYTop = newYTop;
        selctorYBottom = newYBottom;
      });
    }
  }
  @override
  void initState() {
    super.initState();
    titleAnimationController = AnimationController(
      duration: Duration(milliseconds: 250),
      vsync: this,
    );
  }

  @override
  void dispose() {
    titleAnimationController.dispose();
    super.dispose();
  }

  createMenuTitle(MenuController menuController) {
    switch (menuController.state) {
      case MenuState.open:
      case MenuState.opening:
        titleAnimationController.forward();
        break;
      case MenuState.closed:
      case MenuState.closing:
        titleAnimationController.reverse();
        break;
    }
    return AnimatedBuilder(
        animation: titleAnimationController,
        child: OverflowBox(
          maxWidth: double.infinity,
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Color(0x88444444),
                fontSize: 220.0,
              ),
              textAlign: TextAlign.left,
              softWrap: false,
            ),
          ),
        ),
        builder: (BuildContext context, Widget child) {
          return Transform(
            transform: Matrix4.translationValues(
                250.0 * (1.0 - titleAnimationController.value) - 100.0,
                0.0,
                0.0),
            child: child,
          );
        });
  }

  createMenuItems(MenuController menuController) {

    final List<Widget> listItems = [];
    final animationIntervalDuration = 0.5;
    final perListItemDelay = menuController.state != MenuState.closing ? 0.10 : 0.0;
    for(var i = 0; i < widget.menu.items.length; i++){
      final animationInternalStart = i * perListItemDelay;
      final animationIntervalEnd = animationInternalStart + animationIntervalDuration;
      final isSelected =  widget.menu.items[i].id == widget.selectedItemId;
      listItems.add(AnimatedMenuListItem(
        menuState: menuController.state,
        isSelected: isSelected,
        duration: Duration(milliseconds: 600),
        curve: Interval(
            animationInternalStart,
            animationIntervalEnd,
            curve: Curves.easeOut),
        menuListItem: _MenuListItem(
          title: widget.menu.items[i].title,
          isSelected: isSelected,
          onTap: () {
            widget.onMenuItemSelected(widget.menu.items[i].id);
            menuController.close();
          },
        ),
      )
      );
    }

    return Transform(
      transform: Matrix4.translationValues(0.0, 280.0, 0.0),
      child: Column(
        children: listItems,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ZoomScaffoldMenuController(
        builder: (BuildContext context, MenuController menuController) {
          var shoulRenderSelector = true;
          var actualSelectorYTop = selectorYTop;
          var actualSelectorYBottom = selctorYBottom;
          var selectorOpacity = 1.0;

          if(menuController.state == MenuState.closed
          || menuController.state == MenuState.closing){
            final RenderBox menuScreenRenderBox = context.findRenderObject() as RenderBox;
            if(menuScreenRenderBox != null) {
              final menuScreenHeight = menuScreenRenderBox.size.height;
              actualSelectorYTop = menuScreenHeight - 50.0;
              actualSelectorYBottom = menuScreenHeight;
              selectorOpacity = 0.0;
            }else{
              shoulRenderSelector = false;
            }
          }
      return Container(
        width: double.infinity,
        height: double.infinity,
        child: Material(
          color: Colors.transparent,
          child: Stack(
            children: <Widget>[
              createMenuTitle(menuController),
              createMenuItems(menuController),
              shoulRenderSelector ?
              ItemSelector(
                topY: actualSelectorYTop,
                bottomY: actualSelectorYBottom,
                opacity: selectorOpacity,
              ): Container()
            ],
          ),
        ),
      );
    });
  }
}

class ItemSelector extends ImplicitlyAnimatedWidget {

  final double topY;
  final double bottomY;
  final double opacity;


  ItemSelector({
    this.topY,
    this.bottomY,
    this.opacity
  }):super(duration: const Duration(milliseconds: 250));

  @override
  _ItemSelectorState createState() => _ItemSelectorState();
}

class _ItemSelectorState extends AnimatedWidgetBaseState<ItemSelector> {

  Tween<double>_topY;
  Tween<double>_bottomY;
  Tween<double>_opacity;


  @override
  void forEachTween(TweenVisitor visitor) {
    _topY = visitor(
      _topY,
      widget.topY,
        (dynamic value) => Tween<double>(begin: value),
    );
    _bottomY = visitor(
      _bottomY,
      widget.bottomY,
          (dynamic value) => Tween<double>(begin: value),
    );
    _opacity = visitor(
      _opacity,
      widget.opacity,
          (dynamic value) => Tween<double>(begin: value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _topY.evaluate(animation),
      child: Opacity(
        opacity: _opacity.evaluate(animation),
        child: Container(
          width: 4.0,
            height: _bottomY.evaluate(animation) - _topY.evaluate(animation),
          color: Colors.black,
        ),
      ),
    );
  }


}


class AnimatedMenuListItem extends ImplicitlyAnimatedWidget {
  final _MenuListItem menuListItem;
  final MenuState menuState;
  final bool isSelected;
  final Duration duration;

  AnimatedMenuListItem({
    this.menuListItem,
    this.menuState,
    this.isSelected,
    this.duration,
    curve,
  }) : super(duration: duration, curve: curve);

  @override
  _AnimatedMenuListItemState createState() => _AnimatedMenuListItemState();
}

class _AnimatedMenuListItemState
    extends AnimatedWidgetBaseState<AnimatedMenuListItem> {
  final double closedSlidePosition = 200.0;
  final double openSlidePosition = 0.0;

  Tween<double> _translation;
  Tween<double> _opacity;

  updateSelectedRenderBox(){
    final renderBox = context.findRenderObject() as RenderBox;
    if(renderBox != null && widget.isSelected){
      //print('My renderBox size: ${renderBox.localToGlobal(Offset(0.0, 0.0))}');
      //(menuScreenKey.currentState as _MenuScreenState).setSelectedRenderBox(renderBox);
    }
  }

  @override
  void forEachTween(visitor) {
    var slide, opacity;

    switch (widget.menuState) {
      case MenuState.closed:
      case MenuState.closing:
        slide = closedSlidePosition;
        opacity = 0.0;
        break;
      case MenuState.open:
      case MenuState.opening:
        slide = openSlidePosition;
        opacity = 1.0;
        break;
    }
    _translation = visitor(
      _translation,
      slide,
      (dynamic value) => Tween<double>(begin: value),
    );

    _opacity = visitor(
      _opacity,
      opacity,
      (dynamic value) => Tween<double>(begin: value),
    );
  }



  @override
  Widget build(BuildContext context) {
    updateSelectedRenderBox();
    return Opacity(
      opacity: _opacity.evaluate(animation),
      child: Transform(
        transform: Matrix4.translationValues(
          0.0,
          _translation.evaluate(animation),
          0.0,
        ),
        child: widget.menuListItem,
      ),
    );
  }
}

class _MenuListItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function() onTap;

  _MenuListItem({
    this.title,
    this.isSelected,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      splashColor: Color(0x44000000),
      onTap: isSelected ? null : onTap,
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0,top: 10.0, bottom: 10.0),
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.greenAccent : Colors.white,
              fontSize: 18.0,
              fontFamily: 'bebas-neue',
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
class Menu{
  final List<MenuItem> items;

  Menu({this.items});
}

class MenuItem{
  final String id;
  final String title;

  MenuItem({this.title,this.id});
}