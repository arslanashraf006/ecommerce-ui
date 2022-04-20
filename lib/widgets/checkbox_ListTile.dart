import 'package:flutter/material.dart';

class checkBoxList extends StatefulWidget {


  @override
  State<checkBoxList> createState() => _checkBoxListState();
}

class _checkBoxListState extends State<checkBoxList> {
  bool isChecked1=false;
  bool isChecked2=false;
  bool isChecked3=false;
  bool isChecked4=false;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CheckboxListTile(value: isChecked1,
            title: Text('Cash on delivery'),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value){
              setState(() {
                isChecked1=value!;
              });
            }),
        CheckboxListTile(value: isChecked2,
            title: Text('Bkash'),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value){
              setState(() {
                isChecked2=value!;
              });
            }),
        CheckboxListTile(value: isChecked3,
            title: Text('DBBL Rocket'),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value){
              setState(() {
                isChecked3=value!;
              });
            }),
        CheckboxListTile(value: isChecked4,
            title: Text('Credit or Debit Card'),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value){
              setState(() {
                isChecked4=value!;
              });
            }),

      ],
    );
  }
}
