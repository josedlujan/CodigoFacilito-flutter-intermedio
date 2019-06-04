import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: SecondActivity(),
  ));
}


class SecondActivity extends StatefulWidget{
  @override
  _State createState() => _State();

}

class _State extends State<SecondActivity>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Acitivity'),
      ),
      body: Center(
        child: Text('Second Acitivity'),
      ),
    );
  }


}