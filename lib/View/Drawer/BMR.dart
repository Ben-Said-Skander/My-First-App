// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMR extends StatefulWidget {
  @override
  State<BMR> createState() => _BMRState();
}
class _BMRState extends State<BMR> {

  Color mainColor = Colors.tealAccent.shade700 ;
  Color secondColor = Colors.grey.shade400 ;
  TextEditingController heightController = new TextEditingController() ;
  TextEditingController weightController = new TextEditingController() ;
  TextEditingController ageController = new TextEditingController() ;
  int selectedIndex=0  ;
  late double finalResult ;
  late String result="" ;
  late double weight=0  ;
  late double height=0  ;
  int age=0 ;
  late Color genre=Colors.grey.shade300 ;
  late Color other=Colors.grey.shade300 ;

  
  void calculateBMR(double height , double weight , int age ){
    if(selectedIndex == 0){
      finalResult= ((weight/(height*height/10000))*1.20)+(0.23*age)-(10.8*1)-6.4 ;
    String BMR = finalResult.toStringAsFixed(2) ;
    setState(() {
      result = BMR ;
    }); }else if(selectedIndex==1){
      finalResult= ((weight/(height*height/10000))*1.20)+(0.23*age)-(10.8*0)-6.4 ;
    String BMR = finalResult.toStringAsFixed(2) ;
    setState(() {
      result = BMR ;
    }); }}
    
  void chooseGenre(int index){
    if(index == 0 ){
       setState(() {
         genre= Colors.blue ;
         other = Colors.grey.shade300 ;
       });
    }else if(index == 1){
      setState(() {
        other =Colors.pink ;
        genre = Colors.grey.shade300 ;
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     appBar: AppBar(title:Text("BMR Calculator",style:TextStyle(fontSize:19,color:Colors.white)),backgroundColor: mainColor,centerTitle: true,),
     body: ListView(children: [
      SizedBox(height: 20,),
       Row(children: [
         Expanded(child:Container( color:other ,child: IconButton(onPressed:(){
           if(selectedIndex==0){
              setState(() {
                 selectedIndex = 1 ;
               });  }
               chooseGenre(selectedIndex) ;
         } , icon: Icon(FontAwesomeIcons.venus,size: 40,color: Colors.white,)),height:300),flex:1),SizedBox(width: 10,),
         Expanded(child:Container( color: genre ,child: IconButton(onPressed:(){
           if(selectedIndex==1)
               setState(() {
                 selectedIndex = 0 ;             
               });  
             chooseGenre(selectedIndex) ;
         } , icon: Icon(FontAwesomeIcons.mars,size: 40,color:Colors.white),),height:300),flex:1),SizedBox(width: 10,),
       ],),SizedBox(height: 20,),

       Padding(
         padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
         child: Text("Your height in Cm :",style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),),
       ),SizedBox(height: 15,),
       TextFormField( 
         controller: heightController,
         keyboardType: TextInputType.number,
         decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide:BorderSide(color:mainColor, ) ,),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide:BorderSide(color:mainColor, ) ,),
            hintText: "Your Height in Cm",
            hintStyle: TextStyle(color: mainColor,fontSize: 15),
            fillColor: Colors.grey.shade200,
            filled: true,
           
         )),SizedBox(height: 20,),

         Padding(
           padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
           child: Text("Your Weight in Kg :",style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),),
         ),SizedBox(height: 15,),
         TextFormField(
           controller: weightController,
           keyboardType: TextInputType.number,
           decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide:BorderSide(color:mainColor, ) ,),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide:BorderSide(color:mainColor, ) ,),
            hintText: "Your Weight in Kg",
            hintStyle: TextStyle(color: mainColor,fontSize: 15),
            fillColor: Colors.grey.shade200,
            filled: true,
          
    ),),SizedBox(height: 20,),

         Padding(
           padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
           child: Text("Your Age :",style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),),
         ),SizedBox(height: 15,),
         TextFormField(
           controller: ageController,
           keyboardType: TextInputType.number,
           decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide:BorderSide(color:mainColor, ) ,),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide:BorderSide(color:mainColor, ) ,),
            hintText: "Your Age",
            hintStyle: TextStyle(color: mainColor,fontSize: 15),
            fillColor: Colors.grey.shade200,
            filled: true,
           
         )),SizedBox(height: 20,),
        
        Container(width: 250,height:50 ,
          child: MaterialButton(onPressed:(){
            setState(() {
                height = double.parse(heightController.value.text) ;
                weight = double.parse(weightController.value.text) ;
                age = int.parse(ageController.value.text) ;
            });
           
            calculateBMR(height ,weight,age) ;
          })),///SizedBox(height: 25,),

        Center(child: Container(width: 180, height: 60,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: mainColor),
                     child: Center(child:Text("Calculate",style: TextStyle(color: Colors.white,fontSize: 18),)))),SizedBox(height: 15,),
        Center(child: Text("${result}",style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.w700),)), SizedBox(height: 25,),
        
     ],));  }}