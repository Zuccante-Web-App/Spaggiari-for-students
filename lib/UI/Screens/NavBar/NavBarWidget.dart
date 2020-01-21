import 'package:classemorta/main.dart';
import 'package:flutter/material.dart';
import 'package:classemorta/UI/Screens/Home/HomePageWidget.dart';
import 'package:outline_material_icons/outline_material_icons.dart' as icon;

class MyNavPage extends StatefulWidget {
  MyNavPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyNavPageState createState() => _MyNavPageState();
}

class _MyNavPageState extends State<MyNavPage> {

  int _currentIndex = 0;
  final List<Widget> children = [
    MyHomePage(),
    

  ];

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

	    body: children[_currentIndex], 

		  bottomNavigationBar: BottomNavigationBar(

       onTap: onTabTapped, 
       currentIndex: _currentIndex, 

       items: [
         BottomNavigationBarItem(
           icon: Icon(icon.OMIcons.home),
           //title: Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: Icon(icon.OMIcons.insertInvitation),
           //title: Text('Agenda'),
         ),
         BottomNavigationBarItem(
           icon: Icon(icon.OMIcons.libraryBooks),
           //title: Text('Lezioni')
         ),
         BottomNavigationBarItem(
           icon: Icon(icon.OMIcons.inbox),
           //title: Text('Bacheca')
         )
       ],

     ),
   );
  }
}
