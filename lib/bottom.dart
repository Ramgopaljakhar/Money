import 'package:flutter/material.dart';
import 'package:money/page/search_page.dart';



class bottom extends StatefulWidget{
  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {

  final Screens = [
    HOME(),
    Search()


  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
  return Scaffold(

    body:IndexedStack(
      index:currentIndex,
      children:Screens
    ),

    bottomNavigationBar:BottomNavigationBar(
      iconSize:34,
      //backgroundColor:Colors.blue.shade100,
    //  selectedFontSize:25,
     // unselectedFontSize:16,
      showUnselectedLabels:true,
     // showSelectedLabels:true,
      selectedItemColor:Colors.green,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle:TextStyle(color:Colors.grey,),
      currentIndex:currentIndex,
      onTap:(index) => setState(() => currentIndex = index),
      items:const [
      BottomNavigationBarItem(
          icon:Icon(Icons.home,),
          label:'Home'
      ),
      BottomNavigationBarItem(icon:Icon(Icons.search,),
          label:'search'
      ),
    ],

    ),
  );
  }
}

class HOME extends StatefulWidget {
  const HOME({super.key});

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  String name = '';
  DateTime? selectedDate;
  String fatherName = '';
  String pancard = '';
  String mobileNumber = '';
  String emailId = '';
  List<String> selectedOptions = [];
  List<String> options = [
    'NPA',
    'SETTLED',
    'DPD',
    'INQUIRY',
    'WRITE-OFF',
    'NOC',
    'EMI BOUNCE',
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.green,
      appBar:AppBar(
        backgroundColor:Colors.green,
        title:Text('Home page'),
      ),
      body:Container(
        width: double.infinity,height:double.infinity,
        color:Colors.green,
        child: ListView(
          children: [
            Container(
              color:Colors.green,
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height/4.5,
              child:Column(
                children: [
                  Image.asset("assets/images/monlogo.png",height:150,width: 150,),
                  const SizedBox(height:2,),
                  // const Row(
                  //   mainAxisAlignment:MainAxisAlignment.center,
                  //   children: [
                  //     Text('Hii',style:TextStyle(fontSize: 23,color:Colors.white)),
                  //     Text('Student',
                  //       style:TextStyle(
                  //           fontWeight:FontWeight.bold,
                  //           fontStyle:FontStyle.italic,
                  //           fontSize:27,color: Colors.white),)
                  //   ],
                  // ),
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
              child:SizedBox(
             height: 1000,
                child:Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Form(
                    child: ListView(
                        children:[
                          const Text('First Name',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                name = value;
                              });
                            },
                          ),
                          SizedBox(height: 16,),
                          const Text('Last Name',style:TextStyle(fontWeight: FontWeight.bold,fontSize:17,),),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                name = value;
                              });
                            },
                          ),
                          const SizedBox(height: 16,),
                          const Text('DOB',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                          GestureDetector(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                              ).then((pickedDate) {
                                if (pickedDate != null) {
                                  setState(() {
                                    selectedDate = pickedDate;
                                  });
                                }
                              });
                            },
                            child: AbsorbPointer(
                              child: TextFormField(),
                            ),
                          ),
                          const SizedBox(height: 16,),
                          const Text('Father Name',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                fatherName = value;
                              });
                            },
                          ),
                          const SizedBox(height: 16,),
                          const Text('PAN Card',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                pancard = value;
                              });
                            },
                          ),
                          const SizedBox(height: 16,),
                          const Text('Mobile Number',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                mobileNumber = value;
                              });
                            },
                          ),
                          const SizedBox(height: 16,),
                          const Text('Email ID',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                emailId = value;
                              });
                            },
                          ),
                          const SizedBox(height: 16,),
                          const Text('Application Type',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 3.0,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                            ),
                            itemCount: options.length,
                            itemBuilder: (BuildContext context, int index) {
                              final option = options[index];

                              return CheckboxListTile(
                                title: Text(option),
                                value: selectedOptions.contains(option),
                                onChanged: (value) {
                                  setState(() {
                                    if (value == true) {
                                      selectedOptions.add(option);
                                    } else {
                                      selectedOptions.remove(option);
                                    }
                                  });
                                },
                              );
                            },
                          ),
                          const  SizedBox(height: 16,),
                          const SizedBox(height: 16,),
                          Center(
                            child:Container(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    onPrimary: Colors.white,
                                    shadowColor: Colors.greenAccent,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)),
                                    minimumSize: Size(200, 55), //////// HERE
                                  ),
                                  onPressed: () {},
                                  child: const Text('Submit',style:TextStyle(fontSize:17,fontWeight:FontWeight.bold),),
                                )
                            ),
                          ),
                          const SizedBox(height: 16,),
                        ]

                    ),
                  ),
                ) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



