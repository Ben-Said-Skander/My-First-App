// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
 
 class Forearms extends StatefulWidget {
   @override
   State<Forearms> createState() => _ForearmsState();
 }

 class _ForearmsState extends State<Forearms> {

    Color mainColor = Colors.tealAccent.shade700 ;
    Color secondColor = Colors.grey.shade800 ;
    List Forearms=[
       
       {"picture":"barbellbenchpress.jpg","name":" Wrist Curls"},
       {"picture":"dumbbelpresses.jpg","name":" Wrist Curls"},
       {"picture":"dumbbellpullovers.jpg","name":"Dumbbell Wrist Twist"},
       {"picture":"inclinedumbbelpresses.jpg","name":" Standing Wrist Curl"},
   
    ];  
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(backgroundColor: mainColor,title: Text("Forearms",style:TextStyle(color: Colors.white , fontSize: 18)),),
      body: ListView.builder(
        
        itemCount: Forearms.length,
        itemBuilder:(context,i){
          return Container(padding: EdgeInsets.fromLTRB(15, 15, 0,15),
           
            child: ListTile(
              
              leading: Container(height: 130,width: 130,
                child: InkWell(child:Image.asset("IMAGE/Chest/${Forearms[i]['picture']}",fit: BoxFit.fill,), onTap:(){
                                 showDialog(context: context, builder:(context){
                                     return AlertDialog(
                                       title: Text("${Forearms[i]["name"]}",style: TextStyle(color:mainColor,),),
                                       content: Text("${Forearms[i]["name"]}"),
                                       actions : [
        
                                       TextButton(onPressed:(){
                                       Navigator.pop(context) ;
                             }, child: Text("Ok",style: TextStyle(color: mainColor,fontSize: 15),)),]
                                     );
                                 });
                               } ),
              ),
              title:Text("${Forearms[i]['name']}",style: TextStyle(color: secondColor,fontSize: 18),),
                           
            ));       
      }));}}
  

           



  