import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));

}

class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();

}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Cards'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  padding: EdgeInsets.all(28.0),
                  child: Column(
                    children: <Widget>[
                      Image.network("http://www.reparacionapplevalencia.com/wp-content/uploads/2019/01/ios-logo-android.jpg"),
                      Text('José Dimas'),
                      Text('Luján Castillo'),

                    ],
                  ),
                )
              )

            ],
          ),
        ),
      ),
    );
  }

}