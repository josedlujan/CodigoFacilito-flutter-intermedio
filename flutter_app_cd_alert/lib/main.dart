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
  
  Future _showAlert(BuildContext context, String msg) async{
    return showDialog(context: context, child: AlertDialog(
      title: Text(msg),
      actions: <Widget>[
        FlatButton(onPressed: () => Navigator.pop(context),child: Text('Ok'),)
      ],
    ));
    
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo alert'),
      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Texto'),
              RaisedButton(
                onPressed:() => _showAlert(context, 'lo que sea '),
                child: Text('Click'),
              )
            ],
          ),
        ),
      ),
    );
  }

}
