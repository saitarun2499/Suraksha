import 'package:flutter/material.dart';
import 'package:teddy_sign_in/sign_in/mobile.dart';
import 'package:teddy_sign_in/sign_in/register.dart';
import 'package:teddy_sign_in/sign_in/sign_in.dart';
import 'package:teddy_sign_in/sign_in/tracking_text_input.dart';
import '../style.dart' as style;
class Otp extends StatefulWidget{
  _OtpState createState() => _OtpState();
}
  @override
    class _OtpState extends State<Otp>  {
      String _otp;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
                          Navigator.pushReplacement(context,
                          MaterialPageRoute(
                          builder: (context) => Mobile(),
                            ),
                          );      
          },
        ),
      ),
      body: Container(
       decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              style.Style.upperGradientColor,
              style.Style.lowerGradientColor,
            ],
          ),
        ),
        height: height,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: height * 0.1),
          child: Column(
                    children: <Widget>[
                  
                   Container(
                      height: height * 0.4,
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TrackingTextInput(
                        onTextChanged: (String firstname) {
                          
                        },
                        label: "Enter OTP",
                        ),
                       RaisedButton(
                         child: Text('Verify',
                         style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                         ),   
                        onPressed: () { 
                          Navigator.pushReplacement(context,
                          MaterialPageRoute(
                          builder: (context) => Register(),
                            ),
                          );
                         },
                      ),
                      ],
                  ),
                ),
                   )
                    ],
          ),
   ),
   ),
    );
  }
 
}