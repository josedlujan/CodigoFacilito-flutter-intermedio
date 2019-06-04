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
  bool _value = false;

  void _onChanged(bool value) =>  setState(() => _value = value);

  void getValue(){
    if(_value){
      print('verdadero');
    }else{
      print('falso');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Switch'),
      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Quieres este elemento?'),
              Switch(value: _value, onChanged: _onChanged,activeColor: Colors.yellow,inactiveTrackColor: Colors.red,),
              RaisedButton(
                onPressed: getValue ,
                child: Text('Valor'),
              )
            ],
          ),
        ),
      ),
    );
  }

}