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
  final teams = ['Real Madriid', 'Barcelona','Man U','Man City', 'PSG' , 'Juventus',
    'Liverpool','Pumas','Chivas','Monterrey','Tigres','Santros','Leon','Puebla'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
     // body: ListView.builder(



      body: ListView.builder(
      scrollDirection: Axis.horizontal,    
      itemBuilder: (context,index){
        return Container(
          margin:  const EdgeInsets.symmetric(horizontal: 1.0),
    child: Text((teams[index])),
        );
            
    }
      )
    
    



      /*body: ListView.separated(
        itemCount: teams.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(teams[index]),
          );
        },
        separatorBuilder: (context,index){
          return Divider();
          },
      ),
      */


    );
  }


}