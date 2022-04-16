// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart' ;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  
  Color mainColor = Colors.tealAccent.shade700 ;
  Color fColor= Color(0xff3b5998) ;
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fNameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  GlobalKey<FormState> Cle = new GlobalKey<FormState>() ;
  Color genre=Colors.grey.shade300 ;
  Color other=Colors.grey.shade300 ;
    int selectedIndex=0  ;
    
     void chooseGenre(int index){
    if(index == 0 ){
       setState(() {
         genre= mainColor;
         other = Colors.grey.shade200 ;
       });
    }else if(index == 1){
      setState(() {
        other =mainColor ;
        genre = Colors.grey.shade200 ;
      });  }}


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: mainColor,
      body: ListView(children: [
        
        SizedBox(height: 95,),
        Container(height: 35,          
               decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0) , topRight:  Radius.circular(40) , )),),
 
         
        Container(color: Colors.white,
          padding: EdgeInsets.fromLTRB(35, 0, 0, 26),
          child: Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),),
        Container(color: Colors.white,padding: EdgeInsets.fromLTRB(0, 55, 0, 0),
        child: Center(
          child: Container(width: 320,height:100,
            child: TextFormField(
              
              obscureText: false ,
              decoration: InputDecoration(     
              hintText: "First Name",
              hintStyle: TextStyle(color: Colors.white,fontSize: 12),
              fillColor: mainColor,
              filled: true,

               enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:mainColor ) ,),
               focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:mainColor ) ,),))),),
      ), 
          
         
     Container(color: Colors.white,padding:  EdgeInsets.fromLTRB(0, 0, 0, 16),
       child: Center(
          child: Container(width: 320,height:60,
            child: TextFormField(
              
              obscureText: false ,
              decoration: InputDecoration(     
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.white,fontSize: 12),
              fillColor: mainColor,
              filled: true,

               enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:mainColor ) ,),
               focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:mainColor ) ,),))),),
     ), 


    Container(color: Colors.white,padding:  EdgeInsets.fromLTRB(0, 16, 0, 16),
      child: Center(
          child: Container(width: 320,height:60,
            child: TextFormField(
              
              obscureText: false ,
              decoration: InputDecoration(     
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.white,fontSize: 12),
              fillColor: mainColor,
              filled: true,

               enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:mainColor ) ,),
               focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:mainColor ) ,),))),),
    ), 

      

  Container(height: 100,
   color: Colors.white, 
    padding:  EdgeInsets.fromLTRB(0, 15, 0, 15),
    child: Center(child: MaterialButton(onPressed:(){
       Navigator.of(context).pushReplacementNamed("PInfo")  ;
    },child: Text("Sign Up ",style: TextStyle(color: Colors.white,fontSize: 15),),color: mainColor,),)),
          
         Container(
             color: Colors.white,
            padding: EdgeInsets.fromLTRB(30, 10, 0,30),
            child: Text("Or you can Sign Up with :",style: TextStyle(color: Colors.black,fontSize: 18)),
          ),
          Container(color: Colors.white, padding: EdgeInsets.fromLTRB(0, 0, 0, 40),  
             child: Row(children: [SizedBox(width: 15,),     
                 Container(width: 180,height: 100,decoration: BoxDecoration(border: Border.all(color: genre)),
                     child: InkWell(
                              onTap:(){
                                    setState(() {
                                          selectedIndex = 0 ;
                                          chooseGenre(selectedIndex)  ;
                                                               });},        
                     child: Center(child:Icon(FontAwesomeIcons.google,color: mainColor,size: 30,),),),),
      
        SizedBox(width: 20,),
        Container(width: 180,height: 100,decoration: BoxDecoration(border: Border.all(color: other)),
            child: InkWell(
              onTap:(){
                setState(() {
                  selectedIndex = 1 ;
                  chooseGenre(selectedIndex)  ;
                });
              } ,
              child:Center(child:Icon(FontAwesomeIcons.facebook,color: mainColor,size:30)),)),
          
      ],),),
          

      
     ],),);}}
 