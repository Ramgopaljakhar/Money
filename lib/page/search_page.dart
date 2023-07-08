import 'package:flutter/material.dart';


class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,height:MediaQuery.of(context).size.height,
        color:Colors.green,
        child: ListView(
          children: [
            Column(

              children: [
                Container(
                  color:Colors.green,
                  width:MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/3.5,
                  child:Column(
                    children: [
                      Image.asset("assets/images/monlogo.png",height:150,width: 150,),
                      const SizedBox(height:2,),

                      const SizedBox(height:5,),
                      Text('Sign in to Continue',style:TextStyle(color:Colors.white))

                    ],
                  ),
                ),
                Container(
                  width:MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height,
                  decoration:const BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topLeft:Radius.circular(51),
                      topRight:Radius.circular(51),
                    ),
                    color:Colors.white,
                  ),
                  child: Container(
                    margin:const EdgeInsets.only(top:35),
                    child:  Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Application Type',style:TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
                          const Padding(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: TextField(
                              decoration:InputDecoration(
                                  labelText:'Search status'
                              ),

                            ),
                          ),
                          const SizedBox(height:20,),
                          ElevatedButton(
                              style:ElevatedButton.styleFrom(
                                  backgroundColor:const Color(0xff007500)
                              ),
                              onPressed:(){},
                              child:Text('Sesrch',style:TextStyle(fontSize:18,color:Colors.white),))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }

}