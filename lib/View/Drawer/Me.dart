// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Me extends StatefulWidget {
  @override
  State<Me> createState() => _MeState();
}
class _MeState extends State<Me> {

 Color mainColor = Colors.tealAccent.shade700 ;
 Color secondColor = Colors.grey.shade400 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  

  backgroundColor: mainColor,
  body: ListView(children: [SizedBox(height: 30,),
   Divider(color: Colors.grey,),SizedBox(height:10),
   ListTile(
     leading: CircleAvatar(backgroundImage: AssetImage("IMAGE/me.jpg",),radius: 30,),
     title: Text("Skander",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold, color: Colors.white)),
     subtitle: Text("Objective : ",style:TextStyle(fontSize:15, color: Colors.black)),
   ),SizedBox(height:10),Divider(color: Colors.grey,),SizedBox(height: 20,),

      Container(
            
            decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(55.0) , topRight:  Radius.circular(55.0)  )),
            child:
                Padding(
                padding: const EdgeInsets.all(2.0),
               child: ListTile(leading: Icon(Icons.restaurant,color: Colors.green,), title: Text("Diet Type : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),),),
                                ),
    Container(
      color: Colors.white,
      padding: const EdgeInsets.all(2.0),
      child: ListTile(leading: Icon(FontAwesomeIcons.carrot,color: Colors.orange,), title: Text("Calories : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),),
    ),
    Container(
      color: Colors.white,
      padding: const EdgeInsets.all(2.0),
      child: ListTile(leading: Icon(FontAwesomeIcons.bullseye,color: Colors.black,), title: Text("Target Calories : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),),
    ),
    Container(
      color: Colors.white,
      padding: const EdgeInsets.all(2.0),
      child: ListTile(leading: Icon(FontAwesomeIcons.scaleUnbalancedFlip,color: Colors.yellow.shade500,), title: Text("Initial weight : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),),
    ),
    Container(
      color: Colors.white,
      padding: const EdgeInsets.all(2.0),
      child: ListTile(leading: Icon(FontAwesomeIcons.scaleBalanced,color: Colors.yellow.shade500,), title: Text("Target body weight : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),),
    ),
    Container(
      color: Colors.white,
      padding: const EdgeInsets.all(2.0),
      child: ListTile(leading: Icon(FontAwesomeIcons.child,color: Colors.blue,), title: Text("Initial body fat : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),),
    ),
    Container(
      color: Colors.white,
      padding: const EdgeInsets.all(2.0),
      child: ListTile(leading: Icon(FontAwesomeIcons.childReaching,color: Colors.blue,), title: Text("Target body fat : ",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.w500),),),
    ),
    Container(
      color: Colors.white,
      padding: const EdgeInsets.all(2.0),
      child: ListTile(leading: Icon(Icons.apple,color: Colors.red,), title: Text("Diet Type : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),),
    ),
     Container(
      color: Colors.white,
      padding: const EdgeInsets.all(2.0),
      child: ListTile(leading: Icon(FontAwesomeIcons.bell), title: Text("Reminder : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),),
     ),
     Container(height: 200,color: Colors.white,)
  
  ],),
    );}}
  