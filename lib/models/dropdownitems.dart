import 'package:flutter/material.dart';

String Dropdownvalue = 'Allama Iqbal Town, Vehari';
var items = ['Allama Iqbal Town, Vehari','College Town, Vehari'];
List<DropdownMenuItem<String>> dropDownMenuItems() {
  List<DropdownMenuItem<String>> dropdownitem = [];
  for(String item in items)
  {
    var newitem = DropdownMenuItem (child: Text(item),value: item,);
    dropdownitem.add(newitem);
  }
  return dropdownitem;
}