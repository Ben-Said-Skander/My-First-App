// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Egg3 extends StatefulWidget {
  @override
  State<Egg3> createState() => _Egg3State();
}

class _Egg3State extends State<Egg3> {

   Color mainColor = Colors.tealAccent.shade700 ;
   Color secondColor = Colors.grey.shade800 ;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(children: [

        Hero(child:Image.asset("IMAGE/Eggs/Eg3.jpg", width: double.infinity),tag: "Eg3",),
        Container( 
               
               decoration: BoxDecoration(
               color: mainColor,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(20) , topRight:  Radius.circular(20)  )
          ),
          child: Container(height: 600,
            child: ListView(children:  [SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.fromLTRB(13, 0,0, 0),
          child: Text("Skillet Lemon Chicken with Spinach",style:TextStyle(color:Colors.white , fontSize: 18,fontWeight: FontWeight.bold)),
        ),SizedBox(height:12),
        

        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("Ingredients",style:TextStyle(color: Colors.black , fontSize: 18,fontWeight: FontWeight.w700))),SizedBox(height:10),
        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("2 tablespoons extra-virgin olive oil",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),
        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("1 pound boneless, skinless chicken thighs, trimmed and cut into bite-size pieces",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),
        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("1 cup diced red bell pepper",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),
        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("½ teaspoon salt and ½ teaspoon ground pepper",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),
        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("4 cloves garlic, minced and ½ cup dry white wine",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),
        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("2 tablespoons extra-virgin olive oil",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),
        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("1 teaspoon cornstarch",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),
        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("1 medium lemon, zested and juiced",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),
        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("10 cups lightly packed baby spinach",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),
        Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
          child: Text("8 teaspoons grated Parmesan cheese",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),

       SizedBox(height:20),
       
      Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
        child: Text("Nutrition Facts",style:TextStyle(color: secondColor , fontSize: 18,fontWeight: FontWeight.w700))),SizedBox(height: 10,),
      Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
        child: Text("Per Serving (1 Cup):",style:TextStyle(color: Colors.black , fontSize: 16,fontWeight: FontWeight.w300))),SizedBox(height:5),
      Container(padding: EdgeInsets.fromLTRB(9, 0,0, 0),
        child: Text("317 calories      ;  protein 25.9g      ;  carbohydrates 11.1g      ;  dietary fiber 4.3g      ;  sugars 2.1g      ;  fat 16.1g      ;  saturated fat 3.7g      ",style:TextStyle(color: Colors.black , fontSize: 15))),SizedBox(height:10),

      SizedBox(height: 20,)









      ],)), )]));}}