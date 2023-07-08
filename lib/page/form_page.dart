import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
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
    body:Container(

      child:Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
            children:[
              const Text('First Name',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
              TextField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              const SizedBox(height: 16,),
              const Text('Last Name',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
              TextField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              const SizedBox(height: 16,),
              const Text('DOB',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
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
                  child: TextFormField(


                  ),
                ),
              ),
              const SizedBox(height: 16,),
              const Text('Father Name',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
              TextField(
                onChanged: (value) {
                  setState(() {
                    fatherName = value;
                  });
                },
              ),
              const SizedBox(height: 16,),
              const Text('PAN Card',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
              TextField(

                onChanged: (value) {
                  setState(() {
                    pancard = value;
                  });
                },
              ),
              const SizedBox(height: 16,),
              const Text('Mobile Number',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
              TextField(
                keyboardType:TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    mobileNumber = value;
                  });
                },
              ),
              const SizedBox(height: 16,),
              const Text('Email ID',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
              TextField(
                keyboardType:TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    emailId = value;
                  });
                },
              ),
              const SizedBox(height: 16,),
              const Text('Application Type',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
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
                    child: const Text('Submit',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
                  )
                ),
              ),
              const SizedBox(height: 16,),
            ]

        ),
      ) ,
    ),
    );
  }
}
