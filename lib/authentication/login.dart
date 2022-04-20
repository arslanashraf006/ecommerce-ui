import 'package:ecommerce_ui/authentication/otp_verification.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
      ),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 20.0,
                ),
              children: [
                TextSpan(text: 'Enter mobile number\n'),
                TextSpan(text: 'for '),
                TextSpan(text: 'Login/Registration'),
              ]
            ),
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
                  hintText: '+99',
                  hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                ),
              ),
              ),
              SizedBox(width: 10.0,),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextField(
                  textAlign: TextAlign.start,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'xxxxxxxxxx',
                  hintStyle: TextStyle(letterSpacing: 3.0),
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
                   return OTPVerification();
                 }));
              },
              child: Text('Get OTP',),
            ),
          ),
          SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('or connect with'),
              SizedBox(width: 10.0,),
              Image.asset('assets/fb.png',
              height: 20.0,
              width: 20.0,),
              SizedBox(width: 5.0,),
              Image.asset('assets/google.png',
                  height: 20.0,
                  width: 20.0,),
            ],
          ),
        ],
      )),
    );
  }
}
