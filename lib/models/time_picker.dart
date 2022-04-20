import 'package:flutter/material.dart';

TimeOfDay? time;
String? getTime(){
  if(time==null)
  {
    return 'Select Time';
  }
  else
  {
    final hours=time?.hour.toString().padLeft(2,'0');
    final minutes =time?.minute.toString().padLeft(2,'0');
    return '$hours:$minutes';
  }
}
