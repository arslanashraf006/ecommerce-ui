import 'package:flutter/material.dart';
import 'package:ecommerce_ui/models/dropdownitems.dart';

class DropDownWidgetType extends StatefulWidget {
  const DropDownWidgetType({
    Key? key,
  }) : super(key: key);

  @override
  State<DropDownWidgetType> createState() => _DropDownWidgetTypeState();
}

class _DropDownWidgetTypeState extends State<DropDownWidgetType> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Text('Deliver to',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),textAlign: TextAlign.start,
          ),
          Expanded(
            child: DropdownButton<String>(
              value: Dropdownvalue,
              items: dropDownMenuItems(), onChanged: (String? newValue) {
              setState(() {
                Dropdownvalue = newValue!;
              });
            },
            ),
          ),
        ],
      ),
    );
  }
}
