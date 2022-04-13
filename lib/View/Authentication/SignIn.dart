// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> Cle = new GlobalKey<FormState>() ;

  Color mainColor = Colors.tealAccent.shade700 ;
  Color secondColor = Colors.grey.shade800 ;
  Color fColor= Color(0xff3b5998) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body : ListView(children: [

      SizedBox(height: 25,)  ,
      Center(child: Text("App Name",style: TextStyle(color: mainColor,fontSize: 25),),),
      SizedBox(height: 60,)  ,
      Center(
        child: SizedBox(width: 320,height:60,
          child: TextFormField(
            
            obscureText: false ,
            decoration: InputDecoration(     
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.white,fontSize: 12),
            fillColor: mainColor,
            filled: true,

             enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:mainColor ) ,),
             focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:mainColor ) ,),))),),
          
          SizedBox(height:15),
        
        Center(
          child: Container(height: 60,width:320 ,
            child: TextFormField(
            
            obscureText: false ,
            decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.white,fontSize: 12),
            fillColor: mainColor,
            filled: true,
         
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:mainColor ) ,),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:mainColor ) ,),
          ),)
        )),SizedBox(height:15),

        Center(child: MaterialButton(onPressed:(){},child: Text("Sign in ",style: TextStyle(color: Colors.white,fontSize: 15),),color: mainColor,),),SizedBox(height: 25,),
       
        Container(padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
          child: Center(child: Text("-----------------------------------  Or  -----------------------------------",style: TextStyle(fontSize: 15,color: secondColor),))),
               
Container(height: 40,width: 30,padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
  child:   MaterialButton(
  
           color: fColor,
           onPressed:(){},child: Row(children: [
           Image.asset("IMAGE/Fab.png"),
           Text("          Sign up with Facebook",style: TextStyle(color: Colors.white,fontSize: 15),)],),),),
   
       SizedBox(height: 50,),
        
         Container(width: 50,height: 40,padding: EdgeInsets.fromLTRB(15, 0, 15,0),
 child: MaterialButton(
         color: Colors.white,
         onPressed:(){},child: Row(children: [
         Image.asset("IMAGE/g.jpg"),
         Text("          Sign up with Google",style: TextStyle(color: secondColor,fontSize: 15),)


       ],),)),
       
      
      
    ],)); }}

 