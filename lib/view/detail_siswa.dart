import 'package:flutter/material.dart';
import 'package:smkidn_app/model/siswa/data.dart';

class DetailSiswaScreen extends StatelessWidget {
  final Data siswa;

  DetailSiswaScreen(this.siswa);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info ${siswa.name}'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Text(
                '${siswa.name}',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Text(
                'Lahir : ${siswa.born}',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Text(
                'Kelas : ${siswa.level}',
                style: TextStyle(fontSize: 18.0),
              ),
            )
          ],
        )),
      ),
    );
  }
}
