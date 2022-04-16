// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
 
 class Triceps extends StatefulWidget {
   @override
   State<Triceps> createState() => _TricepsState();
 }

 class _TricepsState extends State<Triceps> {

    Color mainColor = Colors.tealAccent.shade700 ;
    Color secondColor = Colors.grey.shade800 ;
    List Triceps=[
       
       {"picture":"barbellbenchpress.jpg","name":" Push Downs"},
       {"picture":"dumbbelpresses.jpg","name":" Triceps Extensions"},
       {"picture":"dumbbellpullovers.jpg","name":" Triceps KickBacks"},
       {"picture":"inclinedumbbelpresses.jpg","name":" Triceps Dips"},
       {"picture":"pushups.jpg","name":" Bar Triceps Extensions"},
       {"picture":"inclinepushups.jpg","name":" Triceps Pushdown"},
       {"picture":"parallelbardips.jpg","name":" Close Grip Bench Presses"},
       {"picture":"pecdeckflys.jpg","name":" Dumbbell Row Kickback"},
       {"picture":"inclinepushups.jpg","name":" Triceps Pushdown"},
       {"picture":"parallelbardips.jpg","name":" One Arm Reverse Pushdown"},
       {"picture":"pecdeckflys.jpg","name":" Seated Triceps Extensions"},
       {"picture":"pecdeckflys.jpg","name":" Diamond Pushup"}

    ];  
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(backgroundColor: mainColor,title: Text("Triceps",style:TextStyle(color: Colors.white , fontSize: 18)),),
      body: ListView.builder(
        
        itemCount: Triceps.length,
        itemBuilder:(context,i){
          return Container(padding: EdgeInsets.fromLTRB(15, 15, 0,15),
           
            child: ListTile(
              
             leading: Container(height: 130,width: 130,
               child: InkWell(child:Image.asset("IMAGE/Chest/${Triceps[i]['picture']}",fit: BoxFit.fill,), onTap:(){
                                     showDialog(context: context, builder:(context){
                                         return AlertDialog(
                                           title: Text("${Triceps[i]["name"]}",style: TextStyle(color:mainColor,),),
                                           content: Text("${Triceps[i]["name"]}"),
                                           actions : [
            
                                           TextButton(onPressed:(){
                                           Navigator.pop(context) ;
                                 }, child: Text("Ok",style: TextStyle(color: mainColor,fontSize: 15),)),]
                                         );
                                     });
                                   } ),
             ),
                  title:Text("${Triceps[i]['name']}",style:  GoogleFonts.bebasNeue(color: Colors.black,fontSize: 19),),
          ));
  

           



      }));}}