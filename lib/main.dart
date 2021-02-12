import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// boilerplate code
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookStore',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BookStore'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

// widget class
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

// state class
// We will replace this class in each of the examples below
class _MyWidgetState extends State<MyWidget> {
  // state variable
  String _textString = 'Hello world';
  int number = 0;
  // The State class must include this method, which builds the widget
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Text('Cart total: ' + number.toString()),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Parry.jpeg'),),
            title: Text('Parry Hotter'),
            subtitle: Text('Price: 10\$'),
            onTap: () {_doSomething(10);},),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/1894.png'),),
            title: Text('1894'),
            subtitle: Text('Price: 25\$'),
            onTap: () {_doSomething(25);},),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Kiara.jpg'),),
            title: Text('Kiara run'),
            subtitle: Text('Price: 35\$'),
            onTap: () {_doSomething(35);},),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Monke.jpg'),),
            title: Text('On the origin of Monke'),
            subtitle: Text('Price: 50\$'),
            onTap: () {_doSomething(50);},),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Ame.jpg'),),
            title: Text('Amelia Watson: The Shark Problem'),
            subtitle: Text('Price: 13\$'),
            onTap: () {_doSomething(13);},),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Ina.jpg'),),
            title: Text('Inanomnomicon'),
            subtitle: Text('Price: 666\$'),
            onTap: () {_doSomething(666);},),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/percy.jpg'),),
            title: Text('Jersey Packson'),
            subtitle: Text('Price: 1\$'),
            onTap: () {_doSomething(1);},),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/BlueSub1.jpg'),),
            title: Text('The hunt for Blue November'),
            subtitle: Text('Price: 100\$'),
            onTap: () {_doSomething(100);},),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Calli.jpg'),),
            title: Text('Calli in Rabbit Hole'),
            subtitle: Text('Price: 60\$'),
            onTap: () {_doSomething(60);},),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Gawr.jpg'),),
            title: Text('Gawr'),
            subtitle: Text('Price: 404\$'),
            onTap: () {_doSomething(404);},),
    ],
    );
  }

  // this private method is run whenever the button is pressed

  void _doSomething(int price) {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.

    setState(() {
      number+= price;
    });
  }
}
