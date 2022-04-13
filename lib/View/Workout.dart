// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
 
 class Workout extends StatefulWidget {
   @override
   State<Workout> createState() => _WorkoutState();
 }
 
 class _WorkoutState extends State<Workout> {
    
    Color mainColor = Colors.tealAccent.shade700 ;
    Color secondColor = Colors.grey.shade300 ;
    
    List workout =[
    
     {"name":"mo3.jpg","number":"Strength()"},{"name":"mo2.jpg","number":"HC2()"},{"name":"mo2.jpg","number":"HC3()"},{"name":"mo2.jpg","number":"HC4()"},
     {"name":"mo2.jpg","number":"HC5()"},{"name":"mo2.jpg","number":"HC6()"}];
   
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       
  backgroundColor: Colors.grey.shade100,
  body:  ListView(children: [
    SizedBox(height: 25) ,
    Padding(padding:
       
        EdgeInsets.fromLTRB(20, 0, 0,0) ,
        child:Text("Workouts",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
   
    SizedBox(height:110)  ,
    Center(child:Padding(padding:EdgeInsets.fromLTRB(55, 10, 0, 20) ,
      child: Row(children: [
        Container(height: 130,width: 130,
            decoration: BoxDecoration(
            color: Colors.white  ,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
                 BoxShadow(
                 color: mainColor,
                 blurRadius: 4,
                 offset: Offset(4, 8), // Shadow position
      ),  ]),
  
          child: Center(child:InkWell(child: Image.asset("IMAGE/yo.png",),onTap:(){} ,),),
         
       
       
        ),SizedBox(width: 40,) ,
        Container(height: 130,width: 130,
            decoration: BoxDecoration(
            color: Colors.white  ,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
                 BoxShadow(
                 color: mainColor,
                 blurRadius: 4,
                 offset: Offset(4, 8), // Shadow position
      ),  ]),
          child: Center(child:InkWell(child: Image.asset("IMAGE/bandd.jpg"),onTap:(){} ,),))

      ],),
    ), ),
    SizedBox(height: 40,) ,

     Center(child: Padding(padding: EdgeInsets.fromLTRB(55, 10, 0, 20) ,
       child: Row(children: [
        
        Container(height: 130,width: 130,
            decoration: BoxDecoration(
            color: Colors.white  ,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
                 BoxShadow(
                 color: mainColor,
                 blurRadius: 4,
                 offset: Offset(4, 8), // Shadow position
      ),  ]),
        child: Center(child:InkWell(child: Image.asset("IMAGE/homeW.jpg"),onTap:(){} ,),)),SizedBox(width: 40,) ,
       
        Container(height: 130,width: 130,
            decoration: BoxDecoration(
            color: Colors.white  ,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
                 BoxShadow(
                 color: mainColor,
                 blurRadius: 4,
                 offset: Offset(4, 8), // Shadow position
      ),  ]),
        child: Center(child:InkWell(child: Image.asset("IMAGE/cardio.jpg",),onTap:(){} ,)),)
    
    ],),),     )],)
  

  
     );}}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  /* Padding(
    padding: EdgeInsets.fromLTRB(15, 30, 15,40),
    child: ListView.builder(scrollDirection: Axis.vertical,
               itemCount: workout.length,
               itemBuilder: (context,i){
                       return Padding(
                         padding:EdgeInsets.fromLTRB(10, 40,15, 10),
                         child: InkWell(child: Image.asset("IMAGE/${workout[i]["name"]}"),onTap:(){Navigator.of(context).pushNamed("${workout[i]["number"]}" );;}),);}),
  
  ),*/ 