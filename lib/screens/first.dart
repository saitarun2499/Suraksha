import 'package:flutter/material.dart';
class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          FloatingActionButton(onPressed: (){}),
          FloatingActionButton(onPressed: (){}),
          FloatingActionButton(onPressed: (){}),
          FloatingActionButton(onPressed: (){}),
          FloatingActionButton(onPressed: (){}),
          FloatingActionButton(onPressed: (){}),
        ],
      ),
    );
  }
}