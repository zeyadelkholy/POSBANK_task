import 'package:flutter/material.dart';

import '../main.dart';

void main(){
  runApp(MyApp());
}



class validator extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<validator> {
  final formKey = GlobalKey<FormState>(); //key for form

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
              key: formKey, //key for form
              child:Column(children: [

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'User Name'
                  ),
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                      //allow upper and lower case alphabets and space
                      return "Enter Correct Name";
                    }else{
                      return null;
                    }
                  },
                ),

                TextFormField(
                  obscureText:true ,

                  decoration: InputDecoration(
                      labelText: 'Password'
                  ),
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value)){
                      //  r'^[0-9]{10}$' pattern plain match number with length 10
                      return "Password should have alphabet and numbers with minimum length of 8 chars";
                    }else{
                      return null;
                    }
                  },
                ),

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email'
                  ),
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)){
                      return "Incorrect Email";
                    }else{
                      return null;
                    }
                  },
                ),
                 SizedBox(height: 20,),
                ElevatedButton(
                  style:const ButtonStyle() ,
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        //check if form data are valid,
                        // your process task ahed if all data are valid
                      }
                    },
                    child: Text("                            Save                             ")
                )

              ],
              ),
            ),
    );


  }
}