import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Stack(
          children: <Widget>[
            Container(
              height: 265.0,
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.deepPurple.withOpacity(0.5),
                        blurRadius: 15,
                        spreadRadius: 7
                    )
                  ]
              ),
            ),
            SafeArea(
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 60.0),
                    CircleAvatar(
                      radius: 45.0,
                      backgroundImage: AssetImage('assets/image/profile.jpeg'),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Rivanda M',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'mahdiyansyahr@gmail.com',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}
