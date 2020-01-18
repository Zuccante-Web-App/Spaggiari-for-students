import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {

int _currentIndex = 0;
final List<Widget> children = [ ];

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   })

  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	   body: children[_currentIndex], 
		bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped, 
       currentIndex: _currentIndex, 
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: new Text('Messages'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
       ],
     ),
   );
 }
}