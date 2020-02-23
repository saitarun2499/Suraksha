import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:css_colors/css_colors.dart';
import 'package:teddy_sign_in/screens/first.dart';
import 'package:teddy_sign_in/sign_in/register.dart';
import 'package:teddy_sign_in/sign_in/sign_in.dart';
import 'style.dart' as styles;
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('SURAKSHA',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),),
      image: Image.asset('assets/images/Capturesur.png'),
      backgroundColor: CSSColors.midnightBlue,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 180.0,
      loaderColor: Colors.red
    )
    );
  }
}
class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teddy Sign In',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: styles.Style.buttonColor,
        cursorColor: styles.Style.buttonColor,
        snackBarTheme: SnackBarThemeData(
          backgroundColor: Colors.red,
          contentTextStyle: TextStyle(color: Colors.white),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: styles.Style.buttonColor,
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          highlightColor: styles.Style.buttonHighlightColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      home:SignIn()
    );
  }
}
