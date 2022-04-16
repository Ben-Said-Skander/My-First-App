// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:getx/View/Diary.dart';
import 'package:getx/View/Workout.dart';
import 'package:getx/View/Recipie.dart';
import 'package:getx/View/Plans.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>() ;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  Color mainColor = Colors.tealAccent.shade700 ;
  Color secondColor = Colors.grey.shade300 ;
  late int selectedIndex =0 ;
  
@override
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      key: scaffoldKey,
      backgroundColor:Colors.grey.shade500,
      drawer: Container(color: Color.fromARGB(255, 31, 104, 87) ,
        child: Drawer(child: Container(color: Color.fromARGB(255, 31, 104, 87) ,
          child: ListView(children:[
           Container(color:Color.fromARGB(255, 31, 104, 87)  , child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color:Color.fromARGB(255, 31, 104, 87) ,),
              accountName: Text("Ben Said Sknader",style:TextStyle(color: Colors.white)),
              
                                        accountEmail: Text("bensaid303@gmail.com",style:TextStyle(color: Colors.white),),
                                        currentAccountPicture:CircleAvatar(backgroundImage:AssetImage("IMAGE/me.jpg") ,) ,),
            ),
                
            Text("---------------------------------------------------------------------",style:TextStyle(color: Colors.white)),
             ListTile(leading: Icon(FontAwesomeIcons.user ,color: Colors.white,),title: InkWell(onTap:(){
               Navigator.of(context).pushNamed("Me()") ;
             } ,child:Text("Profile",style:TextStyle(color: Colors.white)),)) ,       
            
             ListTile(leading: Icon(FontAwesomeIcons.scaleUnbalanced,color: Colors.white,),title: InkWell(onTap:(){
               Navigator.of(context).pushNamed("BMI()") ;
             } ,child:Text("BMI Calculator",style:TextStyle(color: Colors.white)),)) ,   
           
             ListTile(leading: Icon(FontAwesomeIcons.spinner ,color:Colors.white,),title: InkWell(onTap:(){
               Navigator.of(context).pushNamed("BMR()") ;
             } ,child:Text("Body Fat Calculator",style:TextStyle(color: Colors.white))),) ,   
            
             ListTile(leading: Icon(FontAwesomeIcons.dumbbell,color: Colors.white),title: InkWell(onTap:(){
               Navigator.of(context).pushNamed("IW()") ;
             } ,child:Text("Ideal Weight Calculator",style:TextStyle(color: Colors.white))),) , 
            
            
             ListTile(leading: Icon(FontAwesomeIcons.bowlFood,color: Colors.white),title: InkWell(onTap:(){
               Navigator.of(context).pushNamed("NN()") ;
             } ,child:Text("Nutrition Needs",style:TextStyle(color: Colors.white))),) ,  
            
             ListTile(leading: Icon(FontAwesomeIcons.userDoctor,color: Colors.white,),title: InkWell(onTap:(){
              // Navigator.of(context).pushNamed("") ;
             } ,child:Text("Contact a nutritionist",style:TextStyle(color: Colors.white))),) , 

              ListTile(leading: Icon(FontAwesomeIcons.store,color: Colors.white,),title: InkWell(onTap:(){
              // Navigator.of(context).pushNamed("") ;
             } ,child:Text("Rate us in the Play Store",style:TextStyle(color: Colors.white))),) ,   
           
             ListTile(leading: Icon(Icons.settings,color:Colors.white),title: InkWell(onTap:(){
               Navigator.of(context).pushNamed("Setting()") ;
             } ,child:Text("Setting",style:TextStyle(color: Colors.white))),) ,   
            
             ListTile(leading: Icon(Icons.logout_outlined,color: Colors.white),title: InkWell(onTap:(){
           //    Navigator.of(context).pushNamed("") ;
             } ,child:Text("Log out",style:TextStyle(color: Colors.white))),) ,   

               
            ]),
        ),)),
        bottomNavigationBar: CurvedNavigationBar(
          
          height: 55,
          buttonBackgroundColor: mainColor,
          
             items: [ 
          
          Icon(FontAwesomeIcons.calendarDays),
          Icon(FontAwesomeIcons.dumbbell),
          Icon(FontAwesomeIcons.book),
          Icon(Icons.restaurant),
    ],

          index:selectedIndex ,
          backgroundColor: mainColor,
          onTap: (index){
            setState(() {
              selectedIndex = index ;
            });
          } ,
       ),
      
      body:  IndexedStack(
        index: selectedIndex,
        children: [
        Plans(),
        Workout(),
        Diary(),
        Recipie()
      ]));}}


      
       

      

    
