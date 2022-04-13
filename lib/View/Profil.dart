// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';

class Profil extends StatefulWidget {
  @override
  State<Profil> createState() => _ProfilState();
}
class _ProfilState extends State<Profil> {

  Color mainColor = Colors.tealAccent.shade700 ;
  Color secondColor = Colors.grey.shade300 ;

  List Profil=[
    
    {  "name":"User Name : ","responds":""   },
    {  "name":"Profil Photo : ","responds":""   },
    {  "name":"Height : ","responds":""   },
    {  "name":"Weight : ","responds":""   },
    {  "name":"Gender : ","responds":""   },
    {  "name":"Date Of Birth : ","responds":""   },
    {  "name":"Current Weight : ","responds":""   },
    {  "name":"Target Weight : ","responds":""   },
    {  "name":"Target Calories : ","responds":""   },
    {  "name":"Email : ","responds":""   },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       backgroundColor: mainColor,
       body: ListView(children: [    SizedBox(height: 20,),
        Padding(
            padding: EdgeInsets.fromLTRB(0,40, 0, 0),
            child: Center(child: Text("Profil",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white) ,)),),SizedBox(height: 50,),
          Container(
            height: 800,
            decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(55.0) , topRight:  Radius.circular(55.0)  )),
            child: ListView.builder(
               itemCount: Profil.length,
               itemBuilder:(context,i){
                  return ListTile(
                    leading: Padding(padding: EdgeInsets.fromLTRB(20,40, 0, 0) ,child:Text("${Profil[i]["name"]}",style: TextStyle(fontSize: 16),),),
                    trailing: Text("${Profil[i]["responds"]}",style: TextStyle(fontSize: 16),),
            );} ),
          )



       ])
  );   }}