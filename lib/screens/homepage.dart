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
          color: Color(0xFFF6F6F6),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: 32.0,
                ),
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
              TaskCardWidget(
                title: "Get Started",
                description:
                    'Hello user! Welcome to my Todo app, this is a default todo task that you can edit, save or delete',
              ),
              TaskCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
