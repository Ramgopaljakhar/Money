import 'dart:async';
import 'package:flutter/material.dart';
import 'package:money/page/home_page.dart';


class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
   @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor:Colors.green,
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
         children: [
          Image.asset(
              'assets/images/monlogo.png',
            width:100,
            height: 100,
          ),
           const SizedBox(height: 16),
           const Text('Money On Navkar',
             style: TextStyle(
               color: Colors.white,
               fontSize: 20,
               fontWeight: FontWeight.bold,
             ),
           ),
           const SizedBox(height: 16),
           const CircularProgressIndicator(
             valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
           ),


         ],
        ),
      ),
    );
  }
}
