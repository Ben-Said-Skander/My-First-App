// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Needs extends StatefulWidget {
  @override
  State<Needs> createState() => _NeedsState();
}

class _NeedsState extends State<Needs> {
  
  Color mainColor = Colors.tealAccent.shade700 ;
  Color secondColor = Colors.grey.shade400 ;
  TextEditingController weightController = new TextEditingController() ;
  int selectedIndex=0  ;
  late double finalResultP ;
  late double finalResultG ;
  late double finalResultC ;
  late double finalResultW ;
  late String resultP="" ;
  late String resultG="" ;
  late String resultC="" ;
  late String resultW="" ;
  late double weight=0 ;
  late Color genre=Colors.grey.shade300 ;
  late Color other=Colors.grey.shade300 ;

  void proteinNeedsCalculator(double weight){
    finalResultP= weight ; ;
    String IP = finalResultP.toStringAsFixed(2) ;
    setState(() {
      resultP = IP ;
    }); }
  
  void glucideNeedsCalculator(double weight){
    finalResultG= (5*1000)/weight ; ;
    String IG = finalResultG.toStringAsFixed(2) ;
    setState(() {
      resultG = IG ;
    }); }
    void creatineNeedsCalculator(double weight){
    finalResultC= (2.25*1000)/weight ; ;
    String IC = finalResultC.toStringAsFixed(2) ;
    setState(() {
      resultC = IC ;
    }); }
    void waterNeedsCalculator(double weight){
    finalResultW= (30/1000)*weight ; ;
    String IW = finalResultW.toStringAsFixed(2) ;
    setState(() {
      resultW = IW ;
    }); }


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
      });}}
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     appBar: AppBar(title:Text("Your needs in Nutrition",style:TextStyle(fontSize:19,color:Colors.white)),backgroundColor: mainColor,centerTitle: true,),   
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
         child: Text("Your weight in Kg :",style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),),
       ),SizedBox(height: 15,),
       TextFormField( 
         controller: weightController,
         keyboardType: TextInputType.number,
         decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide:BorderSide(color:mainColor, ) ,),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide:BorderSide(color:mainColor, ) ,),
            hintText: "Your weight in Kg",
            hintStyle: TextStyle(color: mainColor,fontSize: 15),
            fillColor: Colors.grey.shade200,
            filled: true,
          
         )),SizedBox(height: 35,),    
       
       Container(width: 250,height:50 ,
                     
            child: MaterialButton(onPressed:(){
              setState(() {
                  weight = double.parse(weightController.value.text) ;
              });
              proteinNeedsCalculator(weight) ;
              glucideNeedsCalculator(weight) ;
              creatineNeedsCalculator(weight) ;
              waterNeedsCalculator(weight) ;
            },
                 child: Center(child:Container(  width: 200, height: 80,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: mainColor),
                   child: Center(child: Text("Calculate",style: TextStyle(color: Colors.white,fontSize: 18),))))),),
          SizedBox(height: 25,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Your Needs in protein  are   :   ${resultP} g ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),
        ),SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Your Needs in glucide  are    :   ${resultG} g ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),
        ),SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Your Needs in creatine  are    :   ${resultC} ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),
        ),SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Your Needs in water  are  :  ${resultW} Litres",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),
        ),SizedBox(height: 15,),
        
     ],));  }}
