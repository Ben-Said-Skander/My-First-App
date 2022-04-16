// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  Color fColor= Color(0xff3b5998) ;
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
      backgroundColor: Colors.white,
      body : ListView(children: [

        Container(height: 150,
                      decoration: BoxDecoration( borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100.0) , bottomRight:  Radius.circular(100) ),color: mainColor)),
      
      SizedBox(height: 60,),
      Center(child: Text("Sign In",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),),
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
             focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color:Colors.white) ,),))),),
          
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

        Center(child: MaterialButton(onPressed:(){
           Navigator.of(context).pushReplacementNamed("HomePage")  ;
        },child: Text("Sign in ",style: TextStyle(color: Colors.white,fontSize: 15),),color: mainColor,),),SizedBox(height: 66,),
        SizedBox(height: 55,),
       
        Container(
                      decoration: BoxDecoration( borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0) , topRight:  Radius.circular(100) ),color: mainColor),
                      height: 190,
                      child: Center(
                        child: Container(
                          child: ListView(children: [SizedBox(height:19),
                            Padding(
          padding: EdgeInsets.fromLTRB(55, 0, 0, 0) ,
          child: Text("Or you can Sign In with :",style: TextStyle(color: Colors.grey.shade900,fontSize: 18,fontWeight: FontWeight.bold)),
        ),SizedBox(height: 40,),
                             Row(children: [SizedBox(width: 15,),
        
                 Container(width: 180,height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: genre)),
                     child: InkWell(
              onTap:(){
                setState(() {
                  selectedIndex = 0 ;
                  chooseGenre(selectedIndex)  ;
                });
              },
              child: Center(child:Icon(FontAwesomeIcons.google,color: Colors.grey.shade200,size: 30,),),),
        ),SizedBox(width: 20,),
        Container(width: 180,height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: other)),
            child: InkWell(
              onTap:(){
                setState(() {
                  selectedIndex = 1 ;
                  chooseGenre(selectedIndex)  ;
                });
              } ,
              child:Center(child:Icon(FontAwesomeIcons.facebook,color: Colors.grey.shade200,size:30)),)),
          
                          ]),SizedBox(height: 10,)],),
                        ),
       ),)               
      
       
      
      
    ],)); }}

   
    