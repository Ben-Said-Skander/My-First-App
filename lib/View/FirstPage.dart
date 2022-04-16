// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

     Color mainColor = Colors.tealAccent.shade700 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body : ListView(children: [
            
            SizedBox(height: 200,),
            Center(child: Text("App Name",style: TextStyle(color: mainColor,fontSize: 35,fontWeight: FontWeight.bold)),), SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("The world of Nutrition and Fittnes at your hands COMPLETLY FREE",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
            )
            ,SizedBox(height: 260,),
            Container(width: 250,height:50 ,
          child: MaterialButton(onPressed:(){
            Navigator.of(context).pushReplacementNamed("SignUp")  ;
          },child: Container(width: 180, height: 60,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: mainColor),
                     child: Center(child:Text("Start",style: TextStyle(color: Colors.white,fontSize: 18),))),)), SizedBox(height: 20,),

            Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Already have an account ? ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold) ),
            )   ,
            MaterialButton(onPressed:(){
              Navigator.of(context).pushReplacementNamed("SignIn")   ;
            },child: Text("Log In",style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.grey.shade200,   ),SizedBox(height:20)  




      ],)
       ]));

  
  } }