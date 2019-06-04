import 'package:flutter/material.dart';
import 'second.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
    routes: <String, WidgetBuilder>{
      '/a':(BuildContext context) => SecondActivity()
    }
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
        title: Text('Example Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
           // DrawerHeader(
            //  child: Text('Header'),
              accountName: Text('José Luján'),
              accountEmail: Text('josedlujan@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text('J L'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('N'),
                )
              ],
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Opcion 1'),
              trailing: Icon(Icons.add),
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/a');
                //Navigator.pushNamed(context, '/a');


              },
            ),
            ListTile(
              title: Text('Opcion 2'),
              trailing: Icon(Icons.print),
              onTap: (){
                Navigator.pop(context);

              },
            ),
            ListTile(
              title: Text('Cerrar'),
              trailing: Icon(Icons.close),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        )

      ),

    );
  }

}