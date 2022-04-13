// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
 
 class Calf extends StatefulWidget {
   @override
   State<Calf> createState() => _CalfState();
 }

 class _CalfState extends State<Calf> {

    Color mainColor = Colors.tealAccent.shade700 ;
    Color secondColor = Colors.grey.shade800 ;
    List Calf=[
       
       {"picture":"barbellbenchpress.jpg","name":" Toe Raises "},
       {"picture":"dumbbelpresses.jpg","name":" One-Leg Toe Raises"},
       {"picture":"dumbbellpullovers.jpg","name":" Seated Calf Raises"},
       {"picture":"inclinedumbbelpresses.jpg","name":" Barbell Calf Raise"},
       {"picture":"pushups.jpg","name":" Dumbbell Calf Jump"},
       {"picture":"inclinepushups.jpg","name":" Dumbbell Calf Raise"},
       {"picture":"parallelbardips.jpg","name":" Standing Barbell Calf Raise"},

    ];  
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(backgroundColor: mainColor,title: Text("Calf",style:TextStyle(color: Colors.white , fontSize: 18)),),
      body: ListView.builder(
        
        itemCount: Calf.length,
        itemBuilder:(context,i){
          return Container(padding: EdgeInsets.fromLTRB(15, 10, 0,10),
           
            child: ListTile(
              
              leading: Image.asset("IMAGE/Chest/${Calf[i]['picture']}"),
              title: InkWell(child: Text("${Calf[i]['name']}",style: TextStyle(color: secondColor,fontSize: 18),),
                             onTap:(){} ,
            ),
          ));
  

           



      }));}}