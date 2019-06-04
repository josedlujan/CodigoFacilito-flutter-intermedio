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

enum Options {YES,NO}

class _State extends State<MyApp>{
  String _value = '';
  void _setValue(String value) => setState(() => _value = value);

  Future _event() async{
    switch(
      await showDialog (
      context: context,
        child: SimpleDialog(
          title: Text('Esto es un dialog'),
          children: <Widget>[
            SimpleDialogOption(child: Text('Ok'),onPressed: (){Navigator.pop(context,Options.YES);},),
            SimpleDialogOption(child: Text('Cancel'),onPressed: (){Navigator.pop(context,Options.NO);},)
          ],
        )
      )
    ){
      case Options.YES:
        _setValue('Yes');
        break;
      case Options.NO:
        _setValue('No');
        break;
    };



  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Dialog'),
      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child:  Column(
            children: <Widget>[
                Text(_value),
                RaisedButton(onPressed: _event, child: Text('Click'),)
            ],
          ),
        ),
      ),
    );

  }

}