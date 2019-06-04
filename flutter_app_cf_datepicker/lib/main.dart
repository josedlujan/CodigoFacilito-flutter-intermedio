import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ))  ;
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();

}

class _State extends State<MyApp>{
  DateTime selectedDate;

  /*Future<Null> _selectedDate(BuildContext context) async{
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 30)),
        lastDate: DateTime.now().add(Duration(days: 30)));

    if(picked != null && picked != selectedDate){
      setState(() {
        selectedDate = picked;
        print(selectedDate);
      });

    }
  }*/
  TimeOfDay _timeOfDay = TimeOfDay.now();

  Future<Null> _selectedTime(BuildContext context) async{
    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: _timeOfDay
    );

    if(picked != null && picked != _timeOfDay){
      print('Time : ${ picked.toString()}');
    }


  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Picker'),
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 18.0),
            RaisedButton(
              //onPressed: () => { _selectedDate(context)},
              onPressed: () => {_selectedTime(context)},
              child: Text('Select date'),
            )
          ],
        ),
      ),
    );
  }

}