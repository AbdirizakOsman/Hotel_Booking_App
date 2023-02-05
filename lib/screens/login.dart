import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hotel_booking_app/hotel_ui/Dashbord.dart';
import 'package:hotel_booking_app/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'explore_screen.dart';
import 'get_started_screen.dart';

class LoginPage extends StatelessWidget{
  final username=TextEditingController();
  final password=TextEditingController();
var isLoading = false;
  
  


  @override
  Widget build(BuildContext context) {
   return SafeArea(
    child: Scaffold(
      body: Container(
       margin:EdgeInsets.all(24) ,
       child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _header(context),
          _inputfield(context),
          _forgotpassword(context),
          _signIn(context),
        ],
        ),
      ),
    ),
    );
  }

  _header(context){
    return Column(
      children: [
        Text(
          "Welocome our visiter", 
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold

            ),),
        Text("Enter your Email Address")
      ],
    );
  }

  _inputfield(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: username,
          decoration: InputDecoration(
            hintText: "username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person)
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: password,
          decoration: InputDecoration(
            hintText: "Password",
            
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person)
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
         ElevatedButton(
          onPressed: ( ) async{
    try{
      isLoading = true;
      setState(){};
     var response = await FirebaseAuth.instance.signInWithEmailAndPassword(email: username.text, password: password.text);
     print("success");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashbord ()));
    }catch(e){
      print(e.toString());
      }
  }
           
          ,
          child: isLoading ?CircularProgressIndicator(backgroundColor: Colors.black,):Text(
            "Login",
            style: TextStyle(fontSize: 20),

            ),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 16),
            ),
            
            ),
      ],
    );
  }
   _forgotpassword(context){
    return TextButton(
      onPressed:  (){}, 
      child: Text("forgot password"));
   }

   _signIn(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Do you have an Account?"),
        TextButton(
          onPressed: (){}, 
          child: Text("sin Up"))
      ],
    );
   }

}