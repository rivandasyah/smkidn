
class Data {

  int id;
  String name;
  String level;
  String born;
  String created_at;
  String updated_at;

	Data.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		name = map["name"],
		level = map["level"],
		born = map["born"],
		created_at = map["created_at"],
		updated_at = map["updated_at"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['name'] = name;
		data['level'] = level;
		data['born'] = born;
		data['created_at'] = created_at;
		data['updated_at'] = updated_at;
		return data;
	}
}
