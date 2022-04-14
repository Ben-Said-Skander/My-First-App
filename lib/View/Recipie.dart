// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, duplicate_import

import 'package:flutter/material.dart' ; 
import 'package:flutter/widgets.dart';
import 'package:getx/components/AppLocal.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class Recipie extends StatefulWidget {
  @override
  State<Recipie> createState() => _RecipieState();
}

class _RecipieState extends State<Recipie> {

   Color mainColor = Colors.tealAccent.shade700 ;
   Color secondColor = Colors.grey.shade800 ;
   
   List lowSugar=[
    
     {"name":"LW1.jpg","number":"LW1()","tag":"LW1"},{"name":"LW2.jpg","number":"LW2()","tag":"LW2"},{"name":"LW3.jpg","number":"LW3()","tag":"LW3"},{"name":"LW4.jpg","number":"LW4()","tag":"LW4"},
     {"name":"LW5.jpg","number":"LW5()","tag":"LW5"},{"name":"LW6.jpg","number":"LW6()","tag":"LW6"},{"name":"LW7.jpg","number":"LW7()","tag":"LW7"},{"name":"LW8.jpg","number":"LW8()","tag":"LW8"},
     {"name":"LW9.jpg","number":"LW9()","tag":"LW9"},];

    List highCarb =[
    
     {"name":"hc1.jpg","number":"HC1()","tag":"hc1"},{"name":"hc2.jpg","number":"HC2()","tag":"hc2"},{"name":"hc3.jpg","number":"HC3()","tag":"hc3"},{"name":"hc4.jpg","number":"HC4()","tag":"hc4"},
     {"name":"hc5.jpg","number":"HC5()","tag":"hc5"},{"name":"hc7.jpg","number":"HC6()","tag":"hc7"}];
     
    
    List preWorkout =[
    
     {"name":"12.jpg","number":"PW1()","tag":"PW1"},{"name":"22.jpg","number":"PW2()","tag":"PW2"},{"name":"3.jpg","number":"PW3()","tag":"PW3"},{"name":"4.jpg","number":"PW4()","tag":"PW4"},
     {"name":"5.jpg","number":"PW5()","tag":"PW5"},{"name":"6.jpg","number":"PW6()","tag":"PW6"},{"name":"7.jpg","number":"PW7()","tag":"PW7"}];

    List keto =[
    
     {"name":"k1.jpg","number":"k1()","tag":"k1"},{"name":"k2.jpg","number":"k2()","tag":"k2"},{"name":"k3.jpg","number":"k3()","tag":"k3"},{"name":"k4.jpg","number":"k4()","tag":"k4"},
     {"name":"k5.jpg","number":"k5()","tag":"k5"},{"name":"k6.jpg","number":"k6()","tag":"k6"}];

     List Egg =[
    
     {"name":"Eg1.jpg","number":"Eg1()","tag":"Eg1"},{"name":"Eg2.jpg","number":"Eg2()","tag":"Eg2"},{"name":"Eg3.jpg","number":"Eg3()","tag":"Eg3"},{"name":"Eg4.jpg","number":"Eg4()","tag":"Eg4"},
     {"name":"Eg5.jpg","number":"Eg5()","tag":"Eg5"},{"name":"Eg6.jpg","number":"Eg6()","tag":"Eg6"},{"name":"Eg7.jpg","number":"Eg7()","tag":"Eg7"},{"name":"Eg8.jpg","number":"Eg8()","tag":"Eg8"},{"name":"Eg9.jpg","number":"Eg9()","tag":"Eg9"},{"name":"Eg10.jpg","number":"Egg10()","tag":"Eg10"},];

     List HP =[
    
     {"name":"hp1.jpg","number":"HP1()","tag":"HP1"},{"name":"hp2.jpg","number":"HP2()","tag":"HP2"},{"name":"hp3.jpg","number":"HP3()","tag":"HP3"},{"name":"hp4.jpg","number":"HP4()","tag":"HP4"},
     {"name":"hp5.jpg","number":"HP5()","tag":"HP5"},{"name":"hp6.jpg","number":"HP6()","tag":"HP6"},];
   
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      backgroundColor: mainColor ,
      body: ListView(children: [

           Row(children: [ 
               
                SizedBox(   height:130  , width: 15,),  
                Container(
                 padding: EdgeInsets.fromLTRB(19,0, 0, 0) ,
                 child: Text('Recipie',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0)), ),   ]), SizedBox(height: 40.0), 
 

           Container(
               decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(85.0) )),

               padding: EdgeInsets.fromLTRB(20,20, 0, 0),
               child:Text("Recipies Based on Eggs" ,  style: 
                     GoogleFonts.playfairDisplay(color: mainColor,fontSize: 20,fontWeight: FontWeight.w700))),Container(height: 15,color: Colors.white,),   
           Container(color: Colors.white,
               height: 250, child: ListView.builder(scrollDirection: Axis.horizontal,
               itemCount: Egg.length,
               itemBuilder: (context,i){
                     return Container(height: 180,width: 250,
                       color: Colors.white,
                       padding: const EdgeInsets.all(8.0),
                       child:Column(children: [
                          InkWell(child: Hero(child:Image.asset("IMAGE/Eggs/${Egg[i]["name"]}",height:180,width:250),tag: "${Egg[i]["tag"]}",
                        ),onTap:(){Navigator.of(context).pushNamed("${Egg[i]["number"]}" );;}),SizedBox(height: 8,),
                        Text("Food Name")
                                    
                       
                       ]));})),Container(height: 20,color: Colors.white,), 

      
              Container(color: Colors.white,
                padding: EdgeInsets.fromLTRB(10,20, 0, 0),
                child: Text("High-Protein and Low-Carb",style: GoogleFonts.playfairDisplay(color: mainColor,fontSize: 20,fontWeight: FontWeight.w700))),Container(height: 15,color: Colors.white,), 
              Container(color:Colors.white , height: 250,child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: HP.length,
                itemBuilder: (context,i){
                     return Container(height: 180,width: 250,
                       color: Colors.white,
                       padding: const EdgeInsets.all(8.0),
                       child: Column(children: [

                         InkWell(child: Hero(child:Image.asset("IMAGE/High-Protein/${HP[i]["name"]}",height:180,width:250),tag:"${HP[i]["tag"]}" ,)
                                       ,onTap:(){Navigator.of(context).pushNamed("${HP[i]["number"]}" );;}),SizedBox(height: 8,),

                         Text("Food Name")
                         ]))  ;})),Container(height: 20,color: Colors.white,), 

              
               Container(color: Colors.white,
                 padding: EdgeInsets.fromLTRB(10,20, 0, 0),
                 child: Text("High Carb ",
                 style:GoogleFonts.playfairDisplay(color: mainColor,fontSize: 20,fontWeight: FontWeight.w700))),Container(height: 20,color: Colors.white,), 
               Container (height: 250, child: ListView.builder(scrollDirection: Axis.horizontal,
                 itemCount: highCarb.length,
                 itemBuilder: (context,i){
                     return Container(height: 180,width: 250,
                       color: Colors.white,
                       padding: const EdgeInsets.all(8.0),
                       child: Column(children: [InkWell(child:Hero(child:Image.asset("IMAGE/HighCarbs/${highCarb[i]["name"]}",height:180,width:250),tag: "${highCarb[i]["tag"]}",
                                                              ),onTap:(){Navigator.of(context).pushNamed("${highCarb[i]["number"]}" );;}),SizedBox(height: 8,),
          
                                                Text("Food Name")
          
                  ]));})),Container(height: 20,color: Colors.white,), 
                     
           
              Container(color: Colors.white,
                padding: EdgeInsets.fromLTRB(10,20, 0, 0),
                child: Text("Pre-Workout",
                style: GoogleFonts.playfairDisplay(color: mainColor,fontSize: 20,fontWeight: FontWeight.w700))),Container(height: 15,color: Colors.white,), 
              Container(color: Colors.white,
                height: 250,child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: preWorkout.length,
                itemBuilder: (context,i){
                     return Container(height: 180,width: 250,
                       color: Colors.white,
                       padding: const EdgeInsets.all(8.0),
                       child: Column(children: [InkWell(child: Hero(child:Image.asset("IMAGE/PreWorkout/${preWorkout[i]["name"]}",height:180,width:250),tag: "${preWorkout[i]["tag"]}",
                                                              ),onTap:(){Navigator.of(context).pushNamed("${preWorkout[i]["number"]}" );;}),SizedBox(height: 8,),
                                                 Text("Food Name")
              
                ]));})),Container(height: 20,color: Colors.white,), 

             
              Container(color: Colors.white,
                padding: EdgeInsets.fromLTRB(10,20, 0, 0),
                child: Text("Low Sugar",
                style: GoogleFonts.playfairDisplay(color: mainColor,fontSize: 20,fontWeight: FontWeight.w700))),Container(height: 15,color: Colors.white,), 
              Container(color: Colors.white,
                height: 250,child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: lowSugar.length,
                itemBuilder: (context,i){
                     return Container(height: 180,width: 250,
                       color: Colors.white,
                       padding: const EdgeInsets.all(8.0),
                       child: Column(children: [ InkWell(child: Hero(child:Image.asset("IMAGE/Low-Sugar/${lowSugar[i]["name"]}",height:180,width:250),tag: "${lowSugar[i]["tag"]}",
                                                               ),onTap:(){Navigator.of(context).pushNamed("${lowSugar[i]["number"]}" );;}),SizedBox(height: 8,),
                                                               
                                                 Text("Food Name")                                       
                                                                     
                ,]));})),Container(height: 15,color: Colors.white,), 

                      
              Container(color: Colors.white,
                padding: EdgeInsets.fromLTRB(10,20, 0, 0),
                child: Text("Keto",
                style: GoogleFonts.playfairDisplay(color: mainColor,fontSize: 20,fontWeight: FontWeight.w700))),Container(height: 15,color: Colors.white,), 
              Container(color: Colors.white,
                height: 250,child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: keto.length,
                itemBuilder: (context,i){
                     return Container(height: 180,width: 250,
                       color: Colors.white,
                       padding: const EdgeInsets.all(8.0),
                       child: Column(children: [
                         
                         InkWell(child: Hero(child:Image.asset("IMAGE/Keto/${keto[i]["name"]}",height:180,width:250),tag: "${keto[i]["tag"]}",),
                                        onTap:(){Navigator.of(context).pushNamed("${keto[i]["number"]}" );;}),SizedBox(height: 8,),
                         Text("Food Name")               
   
                 ,]));})),Container(height: 15,color: Colors.white,), ]),
     
         ) ;     }}
      
