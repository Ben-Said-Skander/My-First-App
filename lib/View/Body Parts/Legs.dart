// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
 
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
       {"picture":"pecdeckflys.jpg","name":"Dumbbell Lunges"},
       {"picture":"pecdeckflys.jpg","name":"Angled Leg Presses "},

    ];  
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(backgroundColor: mainColor,title: Text("Legs",style:TextStyle(color: Colors.white , fontSize: 18)),),
      body: ListView.builder(
        
        itemCount: Legs.length,
        itemBuilder:(context,i){
          return Container(padding: EdgeInsets.fromLTRB(15, 20, 0,15),
           
            child: ListTile(
              
              leading: Container(height: 130,width: 130,
                child: InkWell(child:Image.asset("IMAGE/Chest/${Legs[i]['picture']}",fit: BoxFit.fill,), onTap:(){
                                     showDialog(context: context, builder:(context){
                                         return AlertDialog(
                                           title: Text("${Legs[i]["name"]}",style: TextStyle(color:mainColor,),),
                                           content: Text("${Legs[i]["name"]}"),
                                           actions : [
            
                                           TextButton(onPressed:(){
                                           Navigator.pop(context) ;
                                 }, child: Text("Ok",style: TextStyle(color: mainColor,fontSize: 15),)),]
                                         );
                                     });
                                   } ),
              ),
                  title:Text("${Legs[i]['name']}",style:  GoogleFonts.bebasNeue(color: Colors.black,fontSize: 19),),
          ));
  

           



      }));}}