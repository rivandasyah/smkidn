import 'package:smkidn_app/model/jadwal/data.dart';

class Jadwal {

  int status;
  List<Data> data;

	Jadwal.fromJsonMap(Map<String, dynamic> map): 
		status = map["status"],
		data = List<Data>.from(map["data"].map((it) => Data.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['status'] = status;
		data['data'] = data != null ? 
			this.data.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}
