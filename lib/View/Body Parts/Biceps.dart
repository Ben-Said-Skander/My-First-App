// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
 
 class Biceps extends StatefulWidget {
   @override
   State<Biceps> createState() => _BicepsState();
 }

 class _BicepsState extends State<Biceps> {

    Color mainColor = Colors.tealAccent.shade700 ;
    Color secondColor = Colors.grey.shade800 ;
    List Biceps=[
       
       {"picture":"barbellbenchpress.jpg","name":" Curls"},
       {"picture":"dumbbelpresses.jpg","name":" Barbell Curls"},
       {"picture":"dumbbellpullovers.jpg","name":" Hammer Curls"},
       {"picture":"inclinedumbbelpresses.jpg","name":" Concentration Curls "},
       {"picture":"pushups.jpg","name":" Reverse Curls"},
       {"picture":"inclinepushups.jpg","name":" Dumbbell Biceps Curl"},
       {"picture":"parallelbardips.jpg","name":" Dumbbell Biceps Curl Seated"},
       {"picture":"pecdeckflys.jpg","name":"Cable Biceps Curls"},
       {"picture":"pecdeckflys.jpg","name":"Low Pulley Curls"},
       {"picture":"pecdeckflys.jpg","name":"Low Pulley Cable Crossover"},

    ];  
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(backgroundColor: mainColor,title: Text("Biceps",style:TextStyle(color: Colors.white , fontSize: 18)),),
      body: ListView.builder(
        
        itemCount: Biceps.length,
        itemBuilder:(context,i){
          return Container(padding: EdgeInsets.fromLTRB(15, 10, 0,10),
           
            child: ListTile(
              
              leading: Image.asset("IMAGE/Chest/${Biceps[i]['picture']}"),
              title: InkWell(child: Text("${Biceps[i]['name']}",style: TextStyle(color: secondColor,fontSize: 18),),
                             onTap:(){} ,
            ),
          ));
  

           



      }));}}