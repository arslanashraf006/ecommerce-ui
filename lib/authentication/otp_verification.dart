import 'package:ecommerce_ui/screens/home.dart';
import 'package:flutter/material.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white70,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: Text('OTP Verification'),
      ),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  children: [
                    TextSpan(text: 'Enter the 4-digit number sent to\n'),
                    TextSpan(text: '+99XXXXXXXXXX'),
                  ]
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40.0,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'X',
                    hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(width: 10.0,),
              Container(
                width: 40.0,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'X',
                    hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(width: 10.0,),
              Container(
                width: 40.0,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'X',
                    hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(width: 10.0,),
              Container(
                width: 40.0,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'X',
                    hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                minimumSize: Size(230, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return Myhome();
                 }));
              },
              child: Text('Verify and proceed',),
            ),
          ),
          SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Request new code  in 00:20'),
            ],
          ),
        ],
      )),
    );;
  }
}
