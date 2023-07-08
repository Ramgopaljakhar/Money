import 'package:flutter/material.dart';
import 'package:money/page/search_page.dart';
class CustomBottomNavigationBar extends StatefulWidget {
  static  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
  ];

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Money On Navakar',style:TextStyle(color:Colors.white),),
        backgroundColor:Colors.green,
      ),
      body:Container(
        child: CustomBottomNavigationBar._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor:Colors.green,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(

              icon: Icon(Icons.home,),
              label: 'Home',

            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search,),
              label: 'search',
            ),
          ],

          currentIndex: _selectedIndex,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:Container(
          child:Text('hello home page'),
        ),
      );
  }

}
