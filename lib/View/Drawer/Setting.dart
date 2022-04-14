// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}
class _SettingsState extends State<Settings> {

  Color mainColor = Colors.tealAccent.shade700 ;
  Color secondColor = Colors.grey.shade300 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: mainColor,
      body: ListView(children: [   SizedBox(height: 26,),
        Padding(
          padding:EdgeInsets.fromLTRB(23, 0, 0, 0) ,
          child: Container(child: Text("Settings",style:TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
        ),
        SizedBox(height: 80,) , 
        Container(
          
          decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(55) , topRight:  Radius.circular(55)  )),
               child:Container(height: 800,
                 child: ListView(children: [
        
        
         SizedBox(height: 25,),
       
       ListTile(leading: Icon(Icons.account_balance),title:InkWell(child: Text("Account",style: TextStyle(color: mainColor, fontSize: 17),),onTap:(){
         Navigator.of(context).pushNamed("Account()");
       } ,)),SizedBox(height: 15,),
       ListTile(leading: Icon(Icons.verified_user),title:InkWell(child: Text("Profile",style: TextStyle(color: mainColor, fontSize: 17),),onTap:(){
         Navigator.of(context).pushNamed("Profil()");
       },)),SizedBox(height: 15,),
       ListTile(leading: Icon(Icons.help_center),title:InkWell(child: Text("Support",style: TextStyle(color: mainColor, fontSize: 17),),onTap:(){
        // Navigator.of(context).pushNamed("");
       }),),SizedBox(height: 15,),
       ListTile(leading: Icon(Icons.help_center),title:InkWell(child: Text("About us",style: TextStyle(color: mainColor, fontSize: 17),),onTap:(){
       //  Navigator.of(context).pushNamed("");
       })),SizedBox(height: 15,),
       SizedBox(height: 65,),
        
        
         Container(width: 140, height: 60,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: mainColor),
                       child: Center(child:Text("Log Out",style: TextStyle(color: Colors.white,fontSize: 18),))),SizedBox(height: 25,),










      ]),
               ),
      )])) ; }}
 