import 'package:css_colors/css_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teddy_sign_in/sign_in/mobile.dart';
import 'package:teddy_sign_in/sign_in/sign_in.dart';
import 'package:teddy_sign_in/sign_in/tracking_text_input.dart';
import '../style.dart' as style;
class Register extends StatefulWidget{
  @override
  _RegisterState createState() => _RegisterState(); 
  }
  class _RegisterState extends State<Register> {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    DateTime _date=DateTime.now();
    Future<Null>selectDate(BuildContext context) async{
      final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        lastDate: DateTime(2100),
         firstDate: DateTime(1970),
      );
      if(picked!=null&&picked!=_date){
        setState(() {
          _date=picked;
          print(_date.toString());
        });
      }
    }
    String _firstname;
    String _lastname;
    int selectedradio;
    @override
  void initState() {
    super.initState();
    selectedradio=0;
  }
  setselectedradio(int val){
setState(() {
  selectedradio=val;
});
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
   return Scaffold(
     appBar: AppBar(
       leading:
        IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                          MaterialPageRoute(
                          builder: (context) => SignIn(),
                            ),
                          );
                  },
                ),
                ),
      key: _scaffoldKey,
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
          padding: EdgeInsets.only(top: height * 0.2),
          child: Column(
                    children: <Widget>[
                  
                   Container(
                      height: height * 0.6,
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
                          _firstname = firstname;
                        },
                        label: "firstname",
                        ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            child: TrackingTextInput(
                              label: "lastname",
                              onTextChanged: (String lastname) {
                                _lastname = lastname;
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),                      
                      ButtonBar(
                         alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Gender",),
                          Radio(
                            groupValue: selectedradio,
                            value: 1,
                            activeColor: CSSColors.blue,
                            onChanged: (val) { 
                              setselectedradio(val);
                             },
                          ),
                          Text('Male'),
                          Radio(
                            groupValue: selectedradio,
                            value: 2,
                            activeColor: CSSColors.blue,
                            onChanged: (val) { 
                              setselectedradio(val);
                             },
                          ),
                          Text('Female'),
                        ],
                      ),
                      Text("                               Date of Birth"),
                      IconButton(
                        icon: Icon(Icons.calendar_today),
                       onPressed: () { 
                         Future<DateTime> selectedDate = showDatePicker(
                         context: context,
                         initialDate: DateTime.now(),
                         firstDate: DateTime(1980),
                         lastDate: DateTime.now(),
                         builder: (BuildContext context, Widget child) {
                        return Theme(
                        data: ThemeData.dark(),
                        child: child,
                        );
                       },
                       );
                        },
                       ),
                       RaisedButton(
                         child: Text('Register',
                         style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                         ),   
                        onPressed: () { 
                          Navigator.pushReplacement(context,
                          MaterialPageRoute(
                          builder: (context) => Mobile(),
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