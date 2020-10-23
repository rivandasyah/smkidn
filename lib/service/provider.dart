import 'dart:convert';
import 'dart:io';
import 'package:smkidn_app/model/jadwal/jadwal.dart';
import 'package:smkidn_app/model/siswa/siswa.dart';
import 'package:http/http.dart' as http;

Future<Siswa> getSiswa() async {
  const url = 'https://lnhillal.com/smkidn_rivanda/api/siswa';
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return Siswa.fromJsonMap(jsonDecode(response.body));
  } else {
    throw HttpException('Error ${response.reasonPhrase}', uri: Uri.parse(url));
  }
}

Future<Jadwal> getJadwal() async{
  const url = 'https://lnhillal.com/smkidn_rivanda/api/jadwal';
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return Jadwal.fromJsonMap(jsonDecode(response.body));
  } else {
    throw HttpException('Error ${response.reasonPhrase}', uri: Uri.parse(url));
  }
}