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
        title: Text('Listview'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
            context: context,
            tiles:[
          ListTile(
            title: Text('Opcion 1'),
          ),
          ListTile(
            title: Text('Opcion 2'),
          ),
          ListTile(
            title: Text('Opcion 3'),
          ),
          ListTile(
            title: Text('Opcion 4'),
          ),
          ListTile(
            title: Text('Opcion 5'),
          ),
          ListTile(
            title: Text('Opcion 6'),
          ),
          ListTile(
            title: Text('Opcion 7'),
          ),
          ListTile(
            title: Text('Opcion 8'),
          ),
          ListTile(
            title: Text('Opcion 9'),
          ),
          ListTile(
            title: Text('Opcion 10'),
          ),
          ListTile(
            title: Text('Opcion 11'),
          ),
          ListTile(
            title: Text('Opcion 12'),
          ),
          ListTile(
            title: Text('Opcion 13'),
          ),
          ListTile(
            title: Text('Opcion 14'),
          ),
          ListTile(
            title: Text('Opcion 15'),
          ),
        ]).toList(),
      ),
    );
  }

}