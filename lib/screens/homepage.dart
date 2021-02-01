import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/taskPage.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 32.0,
                      bottom: 32.0,
                    ),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  Expanded(
                    child: ScrollConfiguration(
                      behavior: NoGlow(),
                      child: ListView(
                        children: [
                          TaskCardWidget(
                            title: "Get Started",
                            description:
                                'Hello user! Welcome to my Todo app, this is a default todo task that you can edit, save or delete. Feel free to mess around and experiment with this todo to figure out how todos works.',
                          ),
                          TaskCardWidget(),
                          TaskCardWidget(),
                          TaskCardWidget(),
                          TaskCardWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TaskPage()));
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF7349FE), Color(0xFF843FDB)],
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0)
                        ),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Image(
                      image: AssetImage('assets/images/add_icon.png'),
                    ),
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
