import 'package:flutter/material.dart';
import 'package:smkidn_app/model/siswa/siswa.dart';
import 'package:smkidn_app/service/provider.dart';
import 'package:smkidn_app/view/detail_siswa.dart';

class HomeSiswaScreen extends StatefulWidget {
  static const page = '/siswa';

  @override
  _HomeSiswaScreenState createState() => _HomeSiswaScreenState();
}

class _HomeSiswaScreenState extends State<HomeSiswaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Siswi SMK IDN'),
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
  Future<Siswa> siswaList;

  @override
  void initState() {
    super.initState();
    siswaList = getSiswa();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Siswa>(
        future: siswaList,
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
                            return DetailSiswaScreen(snapshot.data.data[index]);
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
                                  '${snapshot.data.data[index].name}',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 18.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '${snapshot.data.data[index].level}',
                                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    );
                  });
          }
          return null;
        });
  }
}
