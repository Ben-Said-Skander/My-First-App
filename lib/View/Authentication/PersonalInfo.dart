// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonalInfo extends StatefulWidget {
  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {

    Color mainColor = Color(0xFF00BFA5) ;
    TextEditingController heightController = new TextEditingController() ;
    TextEditingController weightController = new TextEditingController() ;
    TextEditingController ageController = new TextEditingController() ;
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

      body: ListView(children: [  SizedBox(height: 80,),

      Center(child: Text("Tell us about yourself",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
      
      SizedBox(height:40),
      Row(children: [
        SizedBox(width: 20,),
        Container(width: 180,height: 100,decoration: BoxDecoration(border: Border.all(color: genre)),
          child: InkWell(
            onTap:(){
              setState(() {
                selectedIndex = 0 ;
                chooseGenre(selectedIndex)  ;
              });
            },
            child: Center(child:Icon(FontAwesomeIcons.male,color: mainColor,size: 30,),),),
        ),SizedBox(width:15,),
        Container(width: 180,height: 100,decoration: BoxDecoration(border: Border.all(color: other)),
          child: InkWell(
            onTap:(){
              setState(() {
                selectedIndex = 1 ;
                chooseGenre(selectedIndex)  ;
              });
            } ,
            child:Center(child:Icon(FontAwesomeIcons.female,color: mainColor,size:30)),)),SizedBox(width: 15,),
      ],),SizedBox(height:50),

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
  ),
         ),SizedBox(height: 25,),
         
         
          Padding(
           padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
           child: Text("Your Height in Cm :",style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),),
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
  ),
         ),SizedBox(height: 25,),
       
       
       
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
  ),
         ),SizedBox(height: 40,),

          Container(width: 250,height:50 ,
          child: MaterialButton(onPressed:(){
            if(selectedIndex == 0){
             Navigator.of(context).pushReplacementNamed("HInfo()")  ; }
             else {
              Navigator.of(context).pushReplacementNamed("HInfoF()")  ; }
             }
           ,child: Container(width: 180, height: 60,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: mainColor),
                     child: Center(child:Text("Next",style: TextStyle(color: Colors.white,fontSize: 18),))),))

        

  


























      ]),
    
    
    
    
    
    
    
    
    
    );
  
  
  } }
 class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 220);
    path.quadraticBezierTo(size.width / 4, 160, size.width / 2, 175);
    path.quadraticBezierTo(3 / 4 * size.width, 190, size.width, 130);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
} 