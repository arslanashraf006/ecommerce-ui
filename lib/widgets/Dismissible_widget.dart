import 'package:flutter/material.dart';

class Dismissiblewidget extends StatelessWidget {
  final Widget child;
  final Widget item;
  const Dismissiblewidget({
    required this.child,
    required this.item,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        background: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          color: Colors.red,
          child: Icon(Icons.delete,size: 30.0,),
        ),
        key: ObjectKey(item),
        child: child);
  }
}
