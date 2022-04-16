// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import
import 'package:flutter/material.dart';

class HealthInfoF extends StatefulWidget {
  @override
  State<HealthInfoF> createState() => _HealthInfoFState();
}

class _HealthInfoFState extends State<HealthInfoF> {

   List bodyFat = [
     {"pic":"1" , "name":" 20%-25%"},
     {"pic":"2" , "name":" 20%-25%"},
     {"pic":"3" , "name":" 20%-25%"},
     {"pic":"4" , "name":" 20%-25%"},
     {"pic":"5" , "name":" 20%-25%"},
     {"pic":"6" , "name":" 20%-25%"},
   ];

   Color mainColor = Color(0xFF00BFA5) ;
   double targetWeight = 65 ;
   double targetFat = 13 ;
   late double value=50 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body : ListView(children: [

          SizedBox(height: 70,),

      Center(child: Text("Current body fat ",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),   
      SizedBox(height:35),
     
      Container(height: 250 ,

         
          child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: bodyFat.length ,
                   itemBuilder: (context,i){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("IMAGE/${bodyFat[i]["pic"]}"),
                    );  }
                 
               ),
            
 
      ),SizedBox(height: 25,) ,

      Padding(
        padding: EdgeInsets.fromLTRB(16, 0, 0, 20),
        child: Text("Add your initial weight : ",style: TextStyle(color: Colors.black,fontSize: 18),),
      ),

      SliderTheme(
    data: SliderThemeData( 
            
           
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
            activeTrackColor: mainColor,
            inactiveTrackColor: Colors.grey.shade200,
            
            ),
            
    child: Slider(

          label: "${value}",
          divisions: 230,
          value: value,
          min : 30 ,
          max: 250,
          onChanged: (val) {
            value = val;
            setState(() {});
          },
        ),
      ),
         
        
      SizedBox(height: 35,),
      Row(children: [SizedBox(width: 40,),
        Container(height: 160,width: 160,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.grey.shade200),
          child: Column(children: [
                  
                       Padding(
                       padding: EdgeInsets.fromLTRB(13, 13, 0, 0)  ,
                       child: Center(child: Text("Set Your Weight Target")),
                     ),SizedBox(height: 13,),
                     Center(child: Text("${targetWeight}",style: TextStyle(color: mainColor),)) ,SizedBox(height: 13,),
            
            Padding(
              padding:EdgeInsets.fromLTRB(13, 13, 0, 0)  ,
              child: Row(children: [SizedBox(width: 10,),
          IconButton(onPressed:(){
              setState(() {
                targetWeight++;
              });
          }, icon:Icon(Icons.add)),SizedBox(width: 15,),
          IconButton(onPressed:(){
           setState(() {
                targetWeight--;
           });
          }, icon:Icon(Icons.exposure_minus_1)),SizedBox(width: 15,),
        ],),
            ),])),SizedBox(width: 20,),
        
        
       Container(height: 160,width: 160,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.grey.shade200),
          child: Column(children: [
                     
                     Padding(
                       padding: EdgeInsets.fromLTRB(13, 13, 0, 0)  ,
                       child: Center(child: Text("Set Your Body Fat Target   %")),
                     ),SizedBox(height: 13,),
                     Center(child: Text("${targetFat}",style: TextStyle(color: mainColor),)) ,SizedBox(height: 13,),
            
            Padding(
              padding:EdgeInsets.fromLTRB(13, 13, 0, 0)  ,
              child: Row(children: [SizedBox(width: 10,),
          IconButton(onPressed:(){
              setState(() {
                targetFat++;
              });
          }, icon:Icon(Icons.add)),SizedBox(width: 15,),
          IconButton(onPressed:(){
           setState(() {
                targetFat--;
           });
          }, icon:Icon(Icons.exposure_minus_1)),SizedBox(width: 15,),
        ],),
            ),])),SizedBox(width: 20,),
      ],),SizedBox(height: 38),

       Container(width: 250,height:50 ,
          child: MaterialButton(onPressed:(){
                Navigator.of(context).pushReplacementNamed("HomePage()")  ;
          },child: Container(width: 180, height: 60,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: mainColor),
                     child: Center(child:Text("Finish",style: TextStyle(color: Colors.white,fontSize: 18),))),))




      ],)
    );
  } }
