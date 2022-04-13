// ignore_for_file: unused_import, file_names, non_constant_identifier_names, unused_element, unused_local_variable, avoid_print, prefer_final_fields, unused_field
import 'package:flutter/material.dart' ;
import 'package:get/get.dart';
//import 'package:google_sign_in/google_sign_in.dart';
//import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthController extends GetxController{

/*FirebaseAuth _auth = FirebaseAuth.instance;
   
  Future<UserCredential> SigninGoogle() async {

  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
  
   void SigninFacebook() async {

   }

   void Signin(String email, String password)async{
        try {
             UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
             email: email.trim() ,
             password: password
               );
            } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found') {
            print('No user found for that email.');
              } else if (e.code == 'wrong-password') {
              print('Wrong password provided for that user.');   }
}}

 

  void Signout()async{
     try {
      await FirebaseAuth.instance.signOut();

    } on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);  }}


    void SignUp(String email, String password) async {
 
   try {
  
       UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.trim(), password: password);
     
     } on FirebaseAuthException catch (e) {
     if (e.code == 'weak-password') {
    print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
    }
    } catch (e) {
  print(e) ; }}*/
}

  

    
 


















