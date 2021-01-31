import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            children: [
              Image(image: AssetImage(
                  'assets/images/logo.png'
              ),
              ),
              TaskCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
