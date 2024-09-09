
import 'package:flutter/material.dart';

extension AppRouter on BuildContext{

  void onPush(Widget route){
    Navigator.push(this,MaterialPageRoute(builder: (_)=> route) );
  }

  /// navigate to a named route and replace the current route
  void onReplacement(Widget route){
    Navigator.pushReplacement(this,MaterialPageRoute(builder: (_)=> route));
  }

  /// navigate to a named route and remove all prviuce routes
  void onPushAndRemoveUntil(Widget route){
    Navigator.pushAndRemoveUntil(this, MaterialPageRoute(builder: (_)=> route), (r)=>false);
  }

  /// Navigate to back
  void onBack(){
    Navigator.pop(this);
  }
}