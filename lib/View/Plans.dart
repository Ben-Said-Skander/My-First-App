// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, unused_label

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Event.dart';


class Plans extends StatefulWidget {
  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {

  Color mainColor = Color(0xFF00BFA5) ;
  DateTime selectedDay= DateTime.now() ;
  DateTime focusedDay= DateTime.now() ;
  CalendarFormat calendearFormat =  CalendarFormat.month ;
  TextEditingController eventController = TextEditingController() ;
  late Map<DateTime , List<Event>> selectedEvents ;
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>() ;

   List bodyPartsU =[   
     {"name":"chestS2.jpg","number":"Chest()"},{"name":"bicepsS2.jpg","number":"Biceps()"},{"name":"TricepsS2.jpg","number":"Triceps()"},{"name":"backS2.jpg","number":"Back()"},{"name":"shoulderS2.jpg","number":"Shoulders()"},{"name":"absS2.jpg","number":"Calf()"}];
    
    List bodyPartsL =[
    
     {"name":"calfS2.jpg","number":"Calf()"},{"name":"legsS2.jpg","number":"Biceps()"}];
     
  @override
  void initState() {
    selectedEvents={} ;
    super.initState();
  }
   
  List<Event> getEventsFromDay(DateTime date){
    return selectedEvents[date] ?? [] ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     key: scaffoldKey,
     backgroundColor: Colors.grey.shade200,    
     floatingActionButton: FloatingActionButton.extended(
      label: Text("Add Events",style: TextStyle(color: Colors.white,fontSize: 12),),
      icon: Icon(Icons.add),
      onPressed:(){

          showDialog(context: context, builder: (context){
                return AlertDialog(

                title : Text("Add Event",style: TextStyle(color: mainColor,fontSize: 12)),
                content: TextFormField(
                      controller: eventController,),
                actions : [
        
                   TextButton(onPressed:(){
                     Navigator.pop(context) ;
                   }, child: Text("Cancel",style: TextStyle(color: mainColor,fontSize: 12),)),

                   TextButton(onPressed:(){ 
                    if(eventController.text.isEmpty){
                       Navigator.pop(context) ;
                       return ;
                    }
                    else {
                      if(selectedEvents[selectedDay]!=null){
                        selectedEvents[selectedDay]!.add(Event(title: eventController.text));
                      }
                    else {
                      selectedEvents[selectedDay]= [Event(title: eventController.text)];
                    }
                    Navigator.pop(context) ;
                    eventController.clear() ;
                    setState(() { });
                    return ;

                }}, child: Text("Ok",style: TextStyle(color: mainColor,fontSize: 12),))]  );});} ,backgroundColor: mainColor,),
  
     body: ListView(children: [

         ClipPath(clipper: WaveClipper(),
                  child: Container(height: 300,color: mainColor,

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 85),
                      child: Row(children: [                        
                              IconButton(onPressed:(){
                                 Scaffold.of(context).openDrawer() ;
                         
                              }, icon: Icon(FontAwesomeIcons.bars,size: 25,color:Colors.white)),SizedBox(width: 10,) ,
                              Text("Plans",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                   ]),
                    )),),
        
        Container(padding: EdgeInsets.fromLTRB(22, 0, 0,15),child: Text("Plan your week",
               style:  GoogleFonts.bebasNeue(color: Colors.black,fontSize: 25,/*fontWeight: FontWeight.w700*/),)) , SizedBox(height: 15,),
        Column(children: [ClipRRect(
                       borderRadius: BorderRadius.circular(40.0),
                       child:  Container(
                         decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.all(
                              Radius.circular(15.0), ),
                         boxShadow: [ BoxShadow(
                               offset: Offset(0, 0),
                               blurRadius: 1.0,
                               color: Colors.white ,
       
       
        )]),
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),             
                child: TableCalendar(
                  daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(color: Colors.white),  
                      weekendStyle:TextStyle(color: Color.fromARGB(255, 11, 87, 149)), ) ,
                 
                   eventLoader: getEventsFromDay,
                   focusedDay: focusedDay,
                   lastDay: DateTime(2050),
                   firstDay: DateTime(1990),
                   calendarFormat: calendearFormat,
                   onFormatChanged:(CalendarFormat newCalendearFormat){
                    setState(() {
                      calendearFormat=newCalendearFormat ;});},
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      daysOfWeekVisible: true, 
                      onDaySelected:(DateTime selectDay , DateTime focusDay){
                      setState(() {
                        selectedDay = selectDay ;
                        focusedDay = focusDay ; });},
                   
                  calendarStyle: CalendarStyle(
                    outsideTextStyle: TextStyle(color: Colors.black),
                    defaultTextStyle: TextStyle(color: Colors.white),
                    isTodayHighlighted: true,
                    selectedDecoration: BoxDecoration(color: Colors.grey.shade100 , shape: BoxShape.circle),
                    todayTextStyle: TextStyle(color: Colors.white) ,
                    selectedTextStyle: TextStyle(color: mainColor),
                    todayDecoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle)),
                    selectedDayPredicate: (DateTime date){
                    return isSameDay(selectedDay , date);},
    
                  headerStyle: HeaderStyle(
                    titleCentered:true ,
                    titleTextStyle: TextStyle(color: Colors.white),
                    formatButtonTextStyle: TextStyle(color: mainColor),
                    formatButtonDecoration: BoxDecoration(color: Colors.white)
        )),)),...getEventsFromDay(selectedDay).map((Event event) => ListTile(title:Text(event.title)),),]),SizedBox(height: 15,),
                      
          Padding(padding: EdgeInsets.fromLTRB(15, 36, 0,15),child: Text("Exercises for your day",
          style:  GoogleFonts.bebasNeue(color: Colors.black,fontSize: 25,/*fontWeight: FontWeight.w700*/),)) ,
          Center(child: Container(padding: EdgeInsets.fromLTRB(22, 22, 0,15),child: Text("Upper Body ",
          style:GoogleFonts.bebasNeue(color: mainColor,fontSize: 20,/*fontWeight: FontWeight.w700*/)))) ,
          Center(
            child: Container(height: 320,child: ListView.builder(scrollDirection: Axis.horizontal,
               itemCount: bodyPartsU.length,
               itemBuilder: (context,i){
                     return Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: InkWell(child: Image.asset("IMAGE/BodyParts/${bodyPartsU[i]["name"]}"),onTap:(){Navigator.of(context).pushNamed("${bodyPartsU[i]["number"]}" );;}),);})),
          ),SizedBox(height:40),

           Center(child: Container(padding: EdgeInsets.fromLTRB(22, 22, 0,15),child: Text("Lower Body",
           style:  GoogleFonts.bebasNeue(color: mainColor,fontSize: 20,/*fontWeight: FontWeight.w700*/),))) ,
           Container(height: 400,child: ListView.builder(scrollDirection: Axis.horizontal,
             itemCount: bodyPartsL.length,
             itemBuilder: (context,i){
                   return Padding(
                     padding: const EdgeInsets.all(20),
                     child: InkWell(child: Image.asset("IMAGE/BodyParts/${bodyPartsL[i]["name"]}"),onTap:(){Navigator.of(context).pushNamed("${bodyPartsL[i]["number"]}" );;}),);})), SizedBox(height: 25,),],));}}
           
                 
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

    


