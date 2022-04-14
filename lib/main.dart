// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, unused_import, unused_local_variable, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:getx/View/Profil.dart';
import 'package:getx/View/Diary.dart';
import 'package:getx/View/Drawer/BMI.dart';
import 'package:getx/View/Drawer/BMR.dart';
import 'package:getx/View/Body%20Parts/Back.dart';
import 'package:getx/View/Body%20Parts/Biceps.dart';
import 'package:getx/View/Body%20Parts/Calf.dart';
import 'package:getx/View/Body%20Parts/Chest.dart';
import 'package:getx/View/Body%20Parts/Forearms.dart';
import 'package:getx/View/Body%20Parts/Legs.dart';
import 'package:getx/View/Body%20Parts/Shoulders.dart';
import 'package:getx/View/Body%20Parts/Triceps.dart';
import 'package:getx/View/Drawer/IW.dart';
import 'package:getx/View/Drawer/NN.dart';
import 'package:getx/View/Drawer/Me.dart';
import 'package:getx/View/Drawer/Setting.dart';
import 'package:getx/View/Account.dart';
import 'package:getx/View/Workout.dart';
import 'package:getx/View/Eggs/Eg1.dart';
import 'package:getx/View/Eggs/Eg10.dart';
import 'package:getx/View/Eggs/Eg2.dart';
import 'package:getx/View/Eggs/Eg3.dart';
import 'package:getx/View/Eggs/Eg4.dart';
import 'package:getx/View/Eggs/Eg5.dart';
import 'package:getx/View/Eggs/Eg6.dart';
import 'package:getx/View/Eggs/Eg7.dart';
import 'package:getx/View/Eggs/Eg8.dart';
import 'package:getx/View/Eggs/Eg9.dart';
import 'package:getx/View/High%20Carb/HC1.dart';
import 'package:getx/View/High%20Carb/HC2.dart';
import 'package:getx/View/High%20Carb/HC3.dart';
import 'package:getx/View/High%20Carb/HC4.dart';
import 'package:getx/View/High%20Carb/HC5.dart';
import 'package:getx/View/High%20Carb/HC6.dart';
import 'package:getx/View/High%20Protein%20and%20low%20carb/H-P1.dart';
import 'package:getx/View/High%20Protein%20and%20low%20carb/H-P2.dart';
import 'package:getx/View/High%20Protein%20and%20low%20carb/H-P3.dart';
import 'package:getx/View/High%20Protein%20and%20low%20carb/H-P4.dart';
import 'package:getx/View/High%20Protein%20and%20low%20carb/H-P5.dart';
import 'package:getx/View/High%20Protein%20and%20low%20carb/H-P6.dart';
import 'package:getx/View/HomePage.dart';
import 'package:getx/View/Keto/k7.dart';
import 'package:getx/View/Keto/k8.dart';
import 'package:getx/View/Recipie.dart';
import 'package:getx/View/Authentication/SignIn.dart';
import 'package:getx/View/Authentication/Signup.dart';
import 'package:flutter/material.dart' ;
import 'package:get/get.dart';
import 'package:getx/View/Plans.dart';
import 'package:getx/View/Workouts/Strength.dart';
import 'View/Keto/k1.dart';
import 'View/Keto/k2.dart';
import 'View/Keto/k3.dart';
import 'View/Keto/k4.dart';
import 'View/Keto/k5.dart';
import 'View/Keto/k6.dart';
import 'View/Low Sugar/LW1.dart';
import 'View/Low Sugar/LW2.dart';
import 'View/Low Sugar/LW3.dart';
import 'View/Low Sugar/LW4.dart';
import 'View/Low Sugar/LW5.dart';
import 'View/Low Sugar/LW6.dart';
import 'View/Pre Workout/PW1.dart';
import 'View/Pre Workout/PW2.dart';
import 'View/Pre Workout/PW3.dart';
import 'View/Pre Workout/PW4.dart';
import 'View/Pre Workout/PW5.dart';
import 'View/Pre Workout/PW6.dart';
import 'components/AppLocal.dart';

void main() async{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
         debugShowCheckedModeBanner: false,
         home: IW(),
         routes: 
               { "HC1()":(context) => HC1() , "HC2()":(context) => HC2(), "HC3()":(context) => HC3(), "HC4()":(context) => HC4(), "HC5()":(context) => HC5(), "HC6()":(context) => HC6(),
                 "PW1()":(context) => PW1() , "PW2()":(context) => PW2(), "PW3()":(context) => PW3(), "PW4()":(context) => PW4(), "PW5()":(context) => PW5(), "PW6()":(context) => PW6(),
                 "LW1()":(context) => LW1() , "LW2()":(context) => LW2(), "LW3()":(context) => LW3(), "LW4()":(context) => LW4(), "LW5()":(context) => LW5(), "LW6()":(context) => LW6(),
                 "k1()":(context) => k1() , "k2()":(context) => k2(), "k3()":(context) => k3(), "k4()":(context) => k4(), "k5()":(context) => k5(), "k6()":(context) => k6(), "k7()":(context) => k7(),"k8()":(context) => k8(),
                 "HP1()":(context) => HP1() , "HP2()":(context) => HP2(), "HP3()":(context) => HP3(), "HP4()":(context) => HP4(), "HP5()":(context) => HP5(), "HP6()":(context) => HP6(),
                 "Eg1()":(context) => Egg1() , "Eg2()":(context) => Egg2(), "Eg3()":(context) => Egg3(), "Eg4()":(context) => Egg4(), "Eg5()":(context) => Egg5(), "Eg6()":(context) => Egg6(),"Eg7()":(context) => Egg7(), "Eg8()":(context) => Egg8(),"Eg9()":(context) => Egg9(), "Eg10()":(context) => Egg10(),
              
                 "Back()":(context) => Back() , "Biceps()":(context) => Biceps(), "Calf()":(context) => Calf(), "Chest()":(context) => Chest(), "Forearms()":(context) => Forearms(), "Legs()":(context) => Legs(), "Shoulders()":(context) => Shoulders(), "Triceps()":(context) => Triceps(),
                 "Strength()":(context) => Strength() ,

                 "Diary()" :(context) => Diary(),
                 "Profil()" :(context) => Profil(),
                 "Account()" :(context) => Account(),
                 "BMI()" :(context) => BMI(),
                 "BMR()" :(context) => BMR(),
                 "IW()" :(context) => IW(),
                 "NN()" :(context) => Needs(),
                 "Setting()" :(context) => Settings(),
                 "Me()" :(context) => Me(),
               } ,
          
               translations: LocaleString(),
               locale: Locale('en','US'),  //langue initial
               
        
        );       }}
        
         
  





