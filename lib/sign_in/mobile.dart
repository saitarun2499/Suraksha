import 'package:flutter/material.dart';
import 'package:teddy_sign_in/sign_in/otp.dart';
import 'package:teddy_sign_in/sign_in/register.dart';
import '../style.dart' as style;
import 'package:teddy_sign_in/sign_in/tracking_text_input.dart';
class Mobile extends StatefulWidget{
   _MobileState createState() => _MobileState(); 
}
        @override
        class _MobileState extends State<Mobile>  {
          String _number;
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
                          builder: (context) => Register(),
                            ),
                          );
                         
          },
        ),
      ),
      body:Container(
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
                        label: "Mobile Number",
                        ),
                       RaisedButton(
                         child: Text('Send OTP',
                         style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                         ),   
                        onPressed: () { 
                          Navigator.pushReplacement(context,
                          MaterialPageRoute(
                          builder: (context) => Otp(),
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
      
   
   
   