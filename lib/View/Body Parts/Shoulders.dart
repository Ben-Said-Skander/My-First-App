// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
 
 class Shoulders extends StatefulWidget {
   @override
   State<Shoulders> createState() => _ShouldersState();
 }

 class _ShouldersState extends State<Shoulders> {

    Color mainColor = Colors.tealAccent.shade700 ;
    Color secondColor = Colors.grey.shade800 ;
    List Shoulders=[
       
       {"picture":"barbellbenchpress.jpg","name":" Barbell Bench Press"},
       {"picture":"dumbbelpresses.jpg","name":" Barbell Press"},
       {"picture":"dumbbellpullovers.jpg","name":" Dumbbel Pullovers"},
       {"picture":"inclinedumbbelpresses.jpg","name":" Incline Dumbbel Press"},
       {"picture":"pushups.jpg","name":" Push Ups"},
       {"picture":"inclinepushups.jpg","name":" Incline Push Ups"},
       {"picture":"parallelbardips.jpg","name":" Parallel Bar Dips"},
       {"picture":"pecdeckflys.jpg","name":"Pec Deck Flys"},

    ];  
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(backgroundColor: mainColor,title: Text("Shoulders",style:TextStyle(color: Colors.white , fontSize: 18)),),
      body: ListView.builder(
        
        itemCount: Shoulders.length,
        itemBuilder:(context,i){
          return Container(padding: EdgeInsets.fromLTRB(15, 10, 0,10),
           
            child: ListTile(
              
              leading: Image.asset("IMAGE/Chest/${Shoulders[i]['picture']}"),
              title: InkWell(child: Text("${Shoulders[i]['name']}",style: TextStyle(color: secondColor,fontSize: 18),),
                             onTap:(){} ,
            ),
          ));
  

           



      }));}}