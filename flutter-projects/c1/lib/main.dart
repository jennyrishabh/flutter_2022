import 'package:firstapp/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
   // home: SafeArea(child: Text('Hello Flutter')),
   home:Home()
  ));
}