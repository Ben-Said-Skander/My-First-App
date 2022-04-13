// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
 
 class Legs extends StatefulWidget {
   @override
   State<Legs> createState() => _LegsState();
 }

 class _LegsState extends State<Legs> {

    Color mainColor = Colors.tealAccent.shade700 ;
    Color secondColor = Colors.grey.shade800 ;
    List Legs=[
       
       {"picture":"barbellbenchpress.jpg","name":" Squats "},
       {"picture":"dumbbelpresses.jpg","name":" Leg Extensions "},
       {"picture":"dumbbellpullovers.jpg","name":"Front Squates"},
       {"picture":"inclinedumbbelpresses.jpg","name":" Cable Back Kicks "},
       {"picture":"pushups.jpg","name":" Dumbbel Squats "},
       {"picture":"inclinepushups.jpg","name":" Bench Jump "},
       {"picture":"parallelbardips.jpg","name":"Bulgarian Split Squat "},
       {"picture":"pecdeckflys.jpg","name":"Seated Leg Curls"},

    ];  
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(backgroundColor: mainColor,title: Text("Legs",style:TextStyle(color: Colors.white , fontSize: 18)),),
      body: ListView.builder(
        
        itemCount: Legs.length,
        itemBuilder:(context,i){
          return Container(padding: EdgeInsets.fromLTRB(15, 10, 0,10),
           
            child: ListTile(
              
              leading: Image.asset("IMAGE/Chest/${Legs[i]['picture']}"),
              title: InkWell(child: Text("${Legs[i]['name']}",style: TextStyle(color: secondColor,fontSize: 18),),
                             onTap:(){} ,
            ),
          ));
  

           



      }));}}