import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
final String title;
final IconData icon;
final VoidCallback onClicked;
ButtonWidget({required this.title,required this.icon,required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(onPressed: onClicked,
        icon: Icon(icon,color: Colors.black,), label: Text(title,style: TextStyle(color: Colors.black),),
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade200,
          elevation: 0.0,
        ),
      ),
    );
  }
}
