// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, deprecated_member_use, dead_code, unnecessary_null_comparison

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

 class SearchFood extends SearchDelegate{  

   Color mainColor = Colors.tealAccent.shade700 ;

 /*  List suggestions=[
     {"Food":"Burger", "calories":"xxx"   } ,
     {"Food":"Pasta", "calories":"xxx" } ,
     {"Food":"Pizza", "calories":"xxx"  },
     {"Food":"Couscous", "calories":"xxx"  },
     {"Food":"Salade","calories":"xxx"   },
     {"Food":"Food6","calories":"xxx"  },
     {"Food":"Food7", "calories":"xxx"  },
     {"Food":"Food8", "calories":"xxx" },
   ] ;*/

   List suggestions = [
     "Burger","Pasta","Pizza","Couscous","Salade","Food6","Food7","Food8",
   ];


   @override
  List<Widget>? buildActions(BuildContext context) {  //trailing

   return <Widget>[IconButton(onPressed:(){
     Navigator.of(context).pushNamed("Diary()") ;
   }, icon: Icon(Icons.clear))]; 
   }

  @override
  Widget? buildLeading(BuildContext context) {
  
    return IconButton(onPressed:(){
       close(context, null) ;
        }, icon: Icon(Icons.arrow_back)); 
  }

  @override
  Widget buildResults(BuildContext context) {
 
    if(query !=null){
             return ListTile(
               title: Text("$query" ),
               onTap:(){} ,);
    }else {
      return ListTile(
        title: Text("No Results Found"),
               onTap:(){} ,);
      
    } }
  

  @override
  Widget buildSuggestions(BuildContext context) {
   
   List Food= suggestions.where((element) => element.contains("$query")).toList()   ;
   return ListView.builder(
    
     itemCount: query == "" ? suggestions.length : Food.length ,
     itemBuilder: (context,i){
      return ListTile(
        onTap:(){
          query = query == ""? suggestions[i] : Food[i] ;
          showResults(context) ;
        } ,title: Container(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: query == "" ? Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("${suggestions[i]}", style: TextStyle(fontSize: 18,color: Colors.black),),
                 ) : Text("${Food[i]}", style: TextStyle(fontSize: 18,color: Colors.black),),
               ),),

            trailing: Text("Calories", style: TextStyle(fontSize: 16,color: mainColor,fontWeight: FontWeight.bold),),   
      
   );  } );
  } }

 