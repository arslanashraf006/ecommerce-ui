import 'package:ecommerce_ui/authentication/login.dart';
import 'package:ecommerce_ui/widgets/button_widget.dart';
import 'package:ecommerce_ui/widgets/checkbox_ListTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/models/time_picker.dart';
import 'package:ecommerce_ui/models/date_picker.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  Object myvalue=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    child: Icon(Icons.arrow_back_ios),onTap: (){
                    Navigator.pop(context);
                  },),
                  SizedBox(width: 5.0,),
                  Expanded(child: Text('Checkout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)),
                  Icon(Icons.shopping_bag_outlined,size: 30.0,color: Colors.red,),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Shipping to',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),),
              Card(
                child: ListTile(
                  leading: Radio(value: 1, groupValue: myvalue, onChanged: (value){
                    setState(() {
                      myvalue=value!;
                    });
                  }),
                  title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text.rich(TextSpan
                    (children: [
                    TextSpan(text: 'Luminious tower, flat E2, Sheikghat, Sylhet\n'),
                    TextSpan(text: '0303 4044928'),
                  ]),),
                  isThreeLine: true,
                  trailing: Icon(Icons.edit),
                ),

              ),
              Card(
                child: ListTile(
                  leading: Radio(value: 2, groupValue: myvalue, onChanged: (value){
                    setState(() {
                      myvalue=value!;
                    });
                  }),
                  title: Text('Office',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text.rich(TextSpan
                    (children: [
                    TextSpan(text: 'Johorna Complex, Kumarpara, Sylhet\n'),
                    TextSpan(text: '0303 4044928'),
                  ]),),
                  isThreeLine: true,
                  trailing: Icon(Icons.edit),
                ),

              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Add new address',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),),),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Preferred delivery time',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),),
              Row(
                children: [
                  ButtonWidget(
                    title: getText()!,
                    onClicked: () => pickDate(context),
                    icon: Icons.arrow_drop_down,
                  ),
                  SizedBox(width: 5.0,),
                  ButtonWidget(
                      title: getTime()!,
                      icon: Icons.arrow_drop_down,
                      onClicked: ()=>pickTime(context)),
                ],
              ),
              Expanded(child: checkBoxList()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)),
        child: BottomAppBar(
          elevation: 50,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: MediaQuery.of(context).size.height*0.15,
            child: Padding(
              padding: MediaQuery.of(context).padding.add(EdgeInsets.only(left: 10.0,right: 10.0)),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total items in cart',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                        Text('Rs:1340',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      minimumSize: Size(500, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                         return Login();
                    }));
                    },
                    child: Text('Click to place order',),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future pickDate(BuildContext context) async{
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: date ?? initialDate,
        firstDate: DateTime(DateTime.now().year-5),
        lastDate: DateTime(DateTime.now().year+5));
    if(newDate==null)return;
    setState(() {
      date=newDate;
    });
  }

  Future pickTime(BuildContext context) async{
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
        context: context,
        initialTime: time ?? initialTime);
    if(newTime==null)return;
    setState(() {
      time=newTime;
    });
  }
}

