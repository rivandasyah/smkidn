import 'package:flutter/material.dart';
import 'package:smkidn_app/model/jadwal/data.dart';

class DetailJadwalScreen extends StatelessWidget {
  final Data jadwal;

  DetailJadwalScreen(this.jadwal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Jadwal Hari ${jadwal.day}'),
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
                  '${jadwal.day}',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        '${jadwal.first_subject}',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Container(
                      child: Text(
                        '${jadwal.first_time}',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                )
              ),
              Container(
                  margin: EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          '${jadwal.second_subject}',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Container(
                        child: Text(
                          '${jadwal.second_time}',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
