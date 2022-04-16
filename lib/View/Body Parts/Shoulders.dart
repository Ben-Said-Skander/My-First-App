// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
 
 class Shoulders extends StatefulWidget {
   @override
   State<Shoulders> createState() => _ShouldersState();
 }

 class _ShouldersState extends State<Shoulders> {

    Color mainColor = Colors.tealAccent.shade700 ;
    Color secondColor = Colors.grey.shade800 ;
    List Shoulders=[
       
       {"picture":"barbellbenchpress.jpg","name":" Lateral Raises"},
       {"picture":"dumbbelpresses.jpg","name":" Front Raises"},
       {"picture":"dumbbellpullovers.jpg","name":" Upright Row"},
       {"picture":"inclinedumbbelpresses.jpg","name":" Barbell Front Raises"},
       {"picture":"pushups.jpg","name":" Arnold Press"},
       {"picture":"inclinepushups.jpg","name":" Dumbbell Shoulder Press"},
       {"picture":"parallelbardips.jpg","name":" Front Weighted Raises"},
       {"picture":"pecdeckflys.jpg","name":" Seated Dumbbell Font Raise"},
       {"picture":"inclinepushups.jpg","name":" Back Presses"},
       {"picture":"parallelbardips.jpg","name":" Seated Front Presses"},
       {"picture":"pecdeckflys.jpg","name":" Seated Dumbbel Presses"},
       {"picture":"pecdeckflys.jpg","name":" Dumbbell Rear Deltoid Raises"},

    ];  
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(backgroundColor: mainColor,title: Text("Shoulders",style:TextStyle(color: Colors.white , fontSize: 18)),),
      body: ListView.builder(
        
        itemCount: Shoulders.length,
        itemBuilder:(context,i){
          return Container(padding: EdgeInsets.fromLTRB(15, 15, 0,15),
           
            child: ListTile(
              
             leading: Container(height: 130,width: 130,
               child: InkWell(child:Image.asset("IMAGE/Chest/${Shoulders[i]['picture']}",fit: BoxFit.fill,), onTap:(){
                                     showDialog(context: context, builder:(context){
                                         return AlertDialog(
                                           title: Text("${Shoulders[i]["name"]}",style: TextStyle(color:mainColor,),),
                                           content: Text("${Shoulders[i]["name"]}"),
                                           actions : [
            
                                           TextButton(onPressed:(){
                                           Navigator.pop(context) ;
                                 }, child: Text("Ok",style: TextStyle(color: mainColor,fontSize: 15),)),]
                                         );
                                     });
                                   } ),
             ),
                  title:Text("${Shoulders[i]['name']}",style:  GoogleFonts.bebasNeue(color: Colors.black,fontSize: 19),),
          ));
  

           



      }));}}