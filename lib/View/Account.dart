// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}
class _AccountState extends State<Account> {

  Color mainColor = Colors.tealAccent.shade700 ;
  Color secondColor = Colors.grey.shade300 ;

  List Account=[
    
    {  "name":"Email Address : ","responds":""   },
    {  "name":"Change Password : ","responds":""   },
    {  "name":"Language : ","responds":""  },
    {  "name":"Notification : ","responds":""  },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
       backgroundColor: mainColor,
       //appBar: AppBar(backgroundColor: mainColor,title:Text("Edit Account",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:Colors.white))),
       body: ListView(children: [    SizedBox(height: 25,),
          Padding(
            padding: EdgeInsets.fromLTRB(0,40, 0, 0),
            child: Center(child: Text("Account",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white) ,)),
          ),
          SizedBox(height: 80,),
                Container(height: 400,
                decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(0.0) , topRight:  Radius.circular(100.0)  )),
                     child: ListView.builder(
                         itemCount: Account.length,
                         itemBuilder:(context,i){
                              return ListTile(
                                     leading: Padding(padding: EdgeInsets.fromLTRB(30,40, 0, 0) ,
                                       child: Text("${Account[i]["name"]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                                     trailing: Padding(
                                       padding: EdgeInsets.fromLTRB(20,15, 0, 0) ,
                                       child: Text("${Account[i]["responds"]}",style: TextStyle(fontSize: 16),),
                                     ),
            );} ),
          ),/*Container(color: Colors.white,
            child: MaterialButton(onPressed:(){}
            ,child: Text("Delete Account",style: TextStyle(color:mainColor,fontSize: 18),),color: Colors.grey.shade100,),
          )*/Container(height: 300,color: Colors.white,),



       ])
  );   }}