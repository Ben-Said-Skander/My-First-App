// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
 
 class Chest extends StatefulWidget {
   @override
   State<Chest> createState() => _ChestState();
 }

 class _ChestState extends State<Chest> {

    Color mainColor = Colors.tealAccent.shade700 ;
    Color secondColor = Colors.grey.shade800 ;
    List chest=[
       
       {"picture":"f4.jpg","name":" Barbell Bench Press","description":"1) Go down on all fours , placing your hands slighlty wider than your shoulders then straighten your arms and legs ,lower your body until your chest nearly touvhes the floor , pause then push yourself back up"},
       {"picture":"dumbbelpresses.jpg","name":" Barbell Press","description":"1) Go down on all fours , placing your hands slighlty wider than your shoulders then straighten your arms and legs ,lower your body until your chest nearly touvhes the floor , pause then push yourself back up"},
       {"picture":"dumbbellpullovers.jpg","name":" Dumbbel Pullovers","description":"1) Go down on all fours , placing your hands slighlty wider than your shoulders then straighten your arms and legs ,lower your body until your chest nearly touvhes the floor , pause then push yourself back up"},
       {"picture":"inclinedumbbelpresses.jpg","name":" Incline Dumbbel Press","description":"1) Go down on all fours , placing your hands slighlty wider than your shoulders then straighten your arms and legs ,lower your body until your chest nearly touvhes the floor , pause then push yourself back up"},
       {"picture":"pushups.jpg","name":" Push Ups","description":"1) Go down on all fours , placing your hands slighlty wider than your shoulders then straighten your arms and legs ,lower your body until your chest nearly touvhes the floor , pause then push yourself back up"},
       {"picture":"inclinepushups.jpg","name":" Incline Push Ups","description":"1) Go down on all fours , placing your hands slighlty wider than your shoulders then straighten your arms and legs ,lower your body until your chest nearly touvhes the floor , pause then push yourself back up"},
       {"picture":"parallelbardips.jpg","name":" Parallel Bar Dips","description":"1) Go down on all fours , placing your hands slighlty wider than your shoulders then straighten your arms and legs ,lower your body until your chest nearly touvhes the floor , pause then push yourself back up"},
       {"picture":"pecdeckflys.jpg","name":"Pec Deck Flys","description":"1) Go down on all fours , placing your hands slighlty wider than your shoulders then straighten your arms and legs ,lower your body until your chest nearly touvhes the floor , pause then push yourself back up"},

    ];  
    
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(backgroundColor: mainColor,title: Text("    Chest",style:TextStyle(color: Colors.white , fontSize: 19)),),
      body:
       ListView(  
          children: [ 
        
        Image.asset("IMAGE/c1.jpg"),
        Container(height: 675,
          child: ListView.builder(
            
            itemCount: chest.length,
            itemBuilder:(context,i){
              return Container(padding: EdgeInsets.fromLTRB(15, 10, 0,10),
               
                child: ListTile(
                  
                  leading: Container(height: 130,width: 130,
                    child: InkWell(child:Image.asset("IMAGE/Chest/${chest[i]['picture']}",fit: BoxFit.fill,), onTap:(){
                                     showDialog(context: context, builder:(context){
                                         return AlertDialog(
                                           title: Text("${chest[i]["name"]}",style: TextStyle(color:mainColor,),),
                                           content: Text("${chest[i]["description"]}"),
                                           actions : [
            
                                           TextButton(onPressed:(){
                                           Navigator.pop(context) ;
                                 }, child: Text("Ok",style: TextStyle(color: mainColor,fontSize: 15),)),]
                                         );
                                     });
                                   } ),
                  ),
                  title:Text("${chest[i]['name']}",style: TextStyle(color: secondColor,fontSize: 18),),
                               
                )); }),
        )]),
      ); 
        
   }}