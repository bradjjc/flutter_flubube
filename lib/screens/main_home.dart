import 'package:flutter/material.dart';
import 'package:animated_float_action_button/animated_floating_action_button.dart';
import 'package:animated_float_action_button/float_action_button_text.dart';
import 'package:flutter_youtube_flutter/screens/detail_screens/flutter.dart';
import 'package:flutter_youtube_flutter/screens/detail_screens/free_code_camp.dart';
import 'package:flutter_youtube_flutter/screens/detail_screens/info.dart';
import 'package:flutter_youtube_flutter/screens/detail_screens/johannes.dart';
import 'package:flutter_youtube_flutter/screens/detail_screens/oh_jun.dart';


class MainHome extends StatefulWidget {
  const MainHome({Key key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final GlobalKey<AnimatedFloatingActionButtonState> fabKey = GlobalKey();
  int _selectedIndex = 0;

  final _widgetOptions = [
    OhJun(),
    Johannes(),
    Flutter(),
    FreeCodeCamp(),
    Info(),
  ];

  Widget oh() {
    return FloatActionButtonText(
      onPressed: (){
        setState(() {
          _selectedIndex = 0;
        });
        fabKey.currentState.animate();
      },
      icon: Icons.favorite_border_outlined,
      text: "생존코딩",
      textLeft: -100,
    );
  }

  Widget johan() {
    return FloatActionButtonText(
      onPressed: (){
        setState(() {
          _selectedIndex = 1;
        });
        fabKey.currentState.animate();
      },
      icon: Icons.favorite_outlined,
      text: "Johannes",
      textLeft: -110,
    );
  }

  Widget flutter() {
    return FloatActionButtonText(
      onPressed: (){
        setState(() {
          _selectedIndex = 2;
        });
        fabKey.currentState.animate();
      },
      icon: Icons.favorite_border_outlined,
      textLeft: -100,
      text: "Flutter",
    );
  }

  Widget freeCodeCamp() {
    return FloatActionButtonText(
      onPressed: (){
        setState(() {
          _selectedIndex = 3;
        });
        fabKey.currentState.animate();
      },
      icon: Icons.favorite_outlined,
      textLeft: -150,
      text: "freeCodeCamp",
    );
  }
  Widget info() {
    return FloatActionButtonText(
      onPressed: (){
        setState(() {
          _selectedIndex = 4;
        });
        fabKey.currentState.animate();
      },
      icon: Icons.favorite_outlined,
      textLeft: -100,
      text: "info",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedFloatingActionButton(
        key: fabKey,
        fabButtons: <Widget>[
          oh(),
          johan(),
          flutter(),
          freeCodeCamp(),
          info(),
        ],
        colorStartAnimation: Colors.blue,
        colorEndAnimation: Colors.red,
        animatedIconData: AnimatedIcons.menu_close, //To principal button
      ),
      appBar: AppBar(
        // backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text('FluTube',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: <Color>[
                Colors.black,
                Colors.white,
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
