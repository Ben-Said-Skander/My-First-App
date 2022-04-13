// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:getx/View/SearchFood.dart';

class Diary extends StatefulWidget {
  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  
  Color mainColor = Colors.tealAccent.shade700 ;
  Color secondColor = Colors.grey.shade400 ;
  double calories=1800 ;
  double food=0 ;
  double remainingCalories=0 ;
  double lunchCalories=0 ;
  double dinnerCalories=0;
  double breakfastCalories=0 ;
  double snacksCalories=0 ;
  double waterDrunk=0 ;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     //  appBar: AppBar(backgroundColor: mainColor,title:Text("Diary",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:Colors.white))),
      body: ListView(children: [

         ClipPath(
             clipper: CurveClipper(),
             child: Container(
                      color: mainColor,
                      height: 300.0,
                      child:Container(height: 100,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
            child: Column(children: [SizedBox(height: 40,),
              Text("Diary",style: TextStyle(color: Colors.white,fontSize: 30),),
              SizedBox(height: 110),
              Row(children: [ SizedBox(width: 34,),
              Text("Calories:",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),SizedBox(width: 20,),
              Text("   Calories Eaten:",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),SizedBox(width: 20,),
              Text(" Calories Left:",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),SizedBox(width: 20,),
            ],),SizedBox(height: 15,),
            Row(children: [ SizedBox(width: 32),
              Text("${calories}",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),SizedBox(width: 90),
              Text("${remainingCalories}",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),SizedBox(width: 120,),
              Text("${food}",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold))
            ],),])), 
                      
                      
                      
                       )),
    
         SizedBox(height: 10,),
         ListTile(
           title:  Text("Breakfast",style: TextStyle(fontSize: 19,color: mainColor),),
           trailing: Container(width: 150,
             child: Row(children: [
               IconButton(onPressed:(){
                  showSearch(context: context, delegate: SearchFood()) ;
               }, icon:Icon(Icons.add)),SizedBox(width: 20,),
               Text("${breakfastCalories}"),]),
          ), ),Padding(
            padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
            child: Text("Food 1",style: TextStyle(fontSize: 16,color: Colors.black)), ),SizedBox(height: 28,),

             ListTile(
           title:  Text("Lunch",style: TextStyle(fontSize: 19,color: mainColor),),
           trailing: Container(width: 150,
             child: Row(children: [
               IconButton(onPressed:(){
                  showSearch(context: context, delegate: SearchFood()) ;
               }, icon:Icon(Icons.add)),SizedBox(width: 20,),
               Text("${breakfastCalories}"),]),
          ), ),Padding(
            padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
            child: Text("Food 1",style: TextStyle(fontSize: 16,color: Colors.black)), ),SizedBox(height: 28,),

             ListTile(
           title:  Text("Dinner",style: TextStyle(fontSize: 19,color: mainColor),),
           trailing: Container(width: 150,
             child: Row(children: [
               IconButton(onPressed:(){
                  showSearch(context: context, delegate: SearchFood()) ;
               }, icon:Icon(Icons.add)),SizedBox(width: 20,),
               Text("${breakfastCalories}"),]),
          ), ),Padding(
            padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
            child: Text("Food 1",style: TextStyle(fontSize: 16,color: Colors.black)), ),SizedBox(height: 28,),

             ListTile(
           title:  Text("Snacks",style: TextStyle(fontSize: 19,color: mainColor),),
           trailing: Container(width: 150,
             child: Row(children: [
               IconButton(onPressed:(){
                 showSearch(context: context, delegate: SearchFood()) ;
               }, icon:Icon(Icons.add)),SizedBox(width: 20,),
               Text("${breakfastCalories}"),]),
          ), ),Padding(
            padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
            child: Text("Food 1",style: TextStyle(fontSize: 16,color: Colors.black)), ),SizedBox(height: 28,),

            ListTile(
           title:  Text("Water",style: TextStyle(fontSize: 19,color: mainColor),),
           trailing: Container(width: 150,
             child: Row(children: [
               IconButton(onPressed:(){
                setState(() {
                   waterDrunk=waterDrunk+0.1 ;
                });
               }, icon:Icon(Icons.add)),SizedBox(width: 10,),        
               Text("${waterDrunk}"),
               IconButton(onPressed:(){
                setState(() {
                   waterDrunk=waterDrunk-0.1 ;
                });
               }, icon:Icon(Icons.exposure_minus_1)),SizedBox(width: 10,),
               ]),
               
          ), ),Padding(
            padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
            child: Text("Total  L : ",style: TextStyle(fontSize: 16,color: Colors.black)), ),
         


]),  );}}
class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
    
  