// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import, unused_field

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart'; 
class HomeW extends StatefulWidget {
  HomeW({Key? key}) : super(key: key);

  @override
  State<HomeW> createState() => _HomeWState();
}

class _HomeWState extends State<HomeW> {

  Color mainColor = Colors.tealAccent.shade700 ;
  Color secondColor = Colors.grey.shade800 ;
  
  
  final List<String> _idList = [
   
    'P91Vegj3Qxg',
    'X5vkOuVWgl8',
    'h0u6FbvI1t4',
  ];

  final List videosTitles=[
  {"name":"HomeW Workout By fraser Wilson"},
  {"name":"Memphis w Hamza"},
  {"name":"N'insite pas"},
  ];
  late YoutubePlayerController youtubeController ;
  List <YoutubePlayerController> lYTC = [] ;
  Map<String, dynamic> cStates = {};

  void runYoutubePlayer(){
    for (var element in _idList) {
    youtubeController=YoutubePlayerController(
     
      initialVideoId:element,
      flags: YoutubePlayerFlags(
       
        enableCaption: true,
        isLive: false,
        autoPlay: false
      ),  
    );
   
     youtubeController.addListener(() {
        print('for $element got isPlaying state ${youtubeController.value.isPlaying}');
        if (cStates[element] != youtubeController.value.isPlaying) {
          if (mounted) {
            setState(() {
              cStates[element] = youtubeController.value.isPlaying;
            });
          }
        }
      });

      lYTC.add(youtubeController);
    }
  }

  @override
  void initState() {
    runYoutubePlayer() ;
    super.initState();
  }
  @override
  void deactivate() {
    youtubeController.pause() ;
    super.deactivate();
  }
  @override
  void dispose() {
    youtubeController.dispose() ;
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(leading:IconButton(onPressed:(){}, icon:Icon(Icons.exit_to_app)),backgroundColor: mainColor,title: Text("HomeW Workout",style:TextStyle(color: Colors.white , fontSize: 18),),),
      body: ListView.builder(
        itemCount: _idList.length,
        itemBuilder:(context,i){
          
          YoutubePlayerController youtubeController= lYTC[i];
          String _id = _idList[i] ;
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
               // alignment: Alignment.bottomCenter,
                children: [
                  Container(padding: EdgeInsets.fromLTRB(0,12, 0, 12),
                    child: Text("${videosTitles[i]["name"]}",style: TextStyle(color: mainColor,fontSize: 18,fontWeight: FontWeight.w700),)),
                  Container(
                    height: 220.0,
                    decoration: const BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: YoutubePlayer(
                        controller: youtubeController,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: mainColor,
                        bottomActions: [
                          CurrentPosition(),
                          ProgressBar(isExpanded: true),
                          FullScreenButton(),
                        ],
                        onReady: (){
                          print('onReady for $i');
                        },
                        onEnded: (YoutubeMetaData _md) {
                          youtubeController.seekTo(const Duration(seconds: 0));
                        },
    
      ) )),SizedBox(height: 15,)]));}
      ));}}