import 'package:flutter/material.dart';
import 'package:money/page/form_page.dart';
import 'package:money/page/search_page.dart';
import '../bottom_navigation.dart';

class HomePage extends StatefulWidget {
  static  final List<Widget> _widgetOptions = <Widget>[
    HomeBody(),
    Search(),
  ];
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
        child: HomePage._widgetOptions.elementAt(_selectedIndex),
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


class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.green,
      body: SingleChildScrollView(
      //  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height/4.5,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/monlogo.png',
                width: 120,
                height: 120,
              ),
            ),
            SizedBox(height: 24),
            Container(
              height:500,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.only(
                  topLeft:Radius.circular(51),
                  topRight:Radius.circular(51),
                ),
                color:Colors.white
              ),
              padding: const EdgeInsets.all(16.0),
              child: FormPage(),
            ),
          ],
        ),
      ),
    );
  }
}



