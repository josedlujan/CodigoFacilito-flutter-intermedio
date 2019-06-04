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

  int _value = 0;

  void _handleRadio(int value){
    setState(() {
      _value = value;
      switch(_value){
        case 0:
          print('0000000000');
          break;
        case 1:
          print('1111111111');
          break;
        case 2:
          print('2222222222');
          break;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Radio'),
      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text ('Selecciona una respuesta'),
            Divider(
              height: 5.0,
              color: Colors.red,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 0,
                    groupValue: _value,
                    onChanged: _handleRadio),
                Text('Opcion 1'),

                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: _handleRadio
                ),
                Text('Opcion 2'),

                Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: _handleRadio,
                ),
                Text('Opcion 3')
              ],
            )
          ],
        ),
      ),
    );
  }

}