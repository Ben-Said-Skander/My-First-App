// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
 
 class Back extends StatefulWidget {
   @override
   State<Back> createState() => _BackState();
 }

 class _BackState extends State<Back> {

    Color mainColor = Colors.tealAccent.shade700 ;
    Color secondColor = Colors.grey.shade800 ;
    List Back=[
       
       {"picture":"barbellbenchpress.jpg","name":" Chin-Ups"},
       {"picture":"dumbbelpresses.jpg","name":" Deadlifts"},
       {"picture":"dumbbellpullovers.jpg","name":" Lat Pull-Downs"},
       {"picture":"inclinedumbbelpresses.jpg","name":" Seated Rows"},
       {"picture":"pushups.jpg","name":" T-Bar Bent Over Row"},
       {"picture":"inclinepushups.jpg","name":" Seated Bent Over Row"},
       {"picture":"parallelbardips.jpg","name":" Dumbbells Bent Over Row"},
       {"picture":"pecdeckflys.jpg","name":"Bodyweight Superman"},
       {"picture":"pecdeckflys.jpg","name":"Back Extensions"},

    ];  
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(backgroundColor: mainColor,title: Text("Back",style:TextStyle(color: Colors.white , fontSize: 18)),),
      body: ListView.builder(
        
        itemCount: Back.length,
        itemBuilder:(context,i){
          return Container(padding: EdgeInsets.fromLTRB(15, 10, 0,10),
           
            child: ListTile(
              
              leading: Image.asset("IMAGE/Chest/${Back[i]['picture']}"),
              title: InkWell(child: Text("${Back[i]['name']}",style: TextStyle(color: secondColor,fontSize: 18),),
                             onTap:(){} ,
            ),
          ));
  

           



      }));}}