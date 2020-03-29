import 'package:flutter/material.dart';

import 'screens/menu_screen.dart';
import 'screens/with_ark_screen.dart';

var MyApp = MaterialApp(
  title: 'Named Routes Demo',
  // Start the app with the "/" named route. In this case, the app starts
  // on the FirstScreen widget.
  initialRoute: '/',
  routes: {
  '/': (context) => MenuScreen(),
  '/ar': (context) => WithARkitScreen(),
  },
);

void main() => runApp(MyApp);

//prova che ho fatto io
/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityDemoScreen extends StatefulWidget {

  UnityDemoScreen({Key key}) : super(key: key);

  @override
  _UnityDemoScreenState createState() => _UnityDemoScreenState();
}

class _UnityDemoScreenState extends State<UnityDemoScreen>{
  static final GlobalKey<ScaffoldState> _scaffoldKey =
  GlobalKey<ScaffoldState>();
  UnityWidgetController _unityWidgetController;

  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        bottom: false,
        child: WillPopScope(
          onWillPop: () {
            // Pop the category page if Android back button is pressed.
          },
          child: Container(
            child: UnityWidget(
              onUnityViewCreated: onUnityCreated,
            ),
          ),
        ),
      ),
    );
  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }
}

var MyApp = MaterialApp(
  title: 'Named Routes Demo',
  // Start the app with the "/" named route. In this case, the app starts
  // on the FirstScreen widget.
  initialRoute: '/',
  routes: {
  '/': (context) => UnityDemoScreen(),
  },
);

void main() => runApp(MyApp);
 */


//main.dart della release
/*
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
  GlobalKey<ScaffoldState>();
  UnityWidgetController _unityWidgetController;
  bool paused = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('Unity Flutter Demo'),
        ),
        body: Container(
            child: Stack(
              children: <Widget>[
                UnityWidget(
                  onUnityViewCreated: onUnityCreated,
                ),
                Positioned(
                  bottom: 40.0,
                  left: 80.0,
                  right: 80.0,
                  child: MaterialButton(
                    onPressed: () {

                      if(paused) {
                        _unityWidgetController.resume();
                        setState(() {
                          paused = false;
                        });
                      } else {
                        _unityWidgetController.pause();
                        setState(() {
                          paused = true;
                        });
                      }
                    },
                    color: Colors.blue[500],
                    child: Text(paused ? 'Start Game' : 'Pause Game'),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }
}

*/