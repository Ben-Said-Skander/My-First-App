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

      appBar: AppBar(backgroundColor: mainColor,title:Text("Setting",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:Colors.white))),
      body: ListView(children: [    SizedBox(height: 25,),
       
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
       SizedBox(height: 35,),
        
        
        Container(width: 250,height:50 ,
          child: MaterialButton(onPressed:(){}
          ,child: Text("Log Out",style: TextStyle(color: mainColor,fontSize: 18),),color: Colors.white,)),SizedBox(height: 25,),










      ]),
    ) ; }}
 