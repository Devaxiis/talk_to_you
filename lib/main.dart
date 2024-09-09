import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:speak_with_you/app.dart';
import 'package:speak_with_you/src/data/data.dart';

bool isConnected = false;
void main() async{
  isConnected = await InternetConnectionChecker().hasConnection;
  final db = DBconnect();
  db.fetchQuestion();
  runApp(const MyApp());
}

