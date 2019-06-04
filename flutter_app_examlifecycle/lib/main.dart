import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
  )
);


class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();

}


class _State extends State<MyApp> with WidgetsBindingObserver{
  AppLifecycleState _state;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _state = state;
    print(state);
    print('xxxxxxxxxxxxxx');
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('José'),
        ),
      ),
    );
  }

}

