import 'package:flutter/material.dart';
import 'package:smkidn_app/model/jadwal/jadwal.dart';
import 'package:smkidn_app/service/provider.dart';
import 'package:smkidn_app/view/detail_jadwal.dart';
import 'package:smkidn_app/view/home_siswa.dart';

class HomeJadwalScreen extends StatefulWidget {
  static const page = '/jadwal';

  @override
  _HomeJadwalScreenState createState() => _HomeJadwalScreenState();
}

class _HomeJadwalScreenState extends State<HomeJadwalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal SMK IDN'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: BodyScreen(),
    );
  }
}

class BodyScreen extends StatefulWidget {
  @override
  _BodyScreenState createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  Future<Jadwal> jadwalList;

  @override
  void initState() {
    super.initState();
    jadwalList = getJadwal();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Jadwal>(
        future: jadwalList,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            case ConnectionState.done:
              if (snapshot.hasError) return Text('Error : ${snapshot.error}');
              return ListView.builder(
                  itemCount: snapshot.data.data.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(16.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return DetailJadwalScreen(snapshot.data.data[index]);
                                }));
                          },
                          child: Container(
                            width: 250.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 10,
                                      spreadRadius: 7)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(children: <Widget>[
                                Container(
                                  child: Text(
                                    '${snapshot.data.data[index].day}',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ));
                  });
          }
          return null;
        });
  }
}
