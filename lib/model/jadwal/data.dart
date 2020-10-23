
class Data {

  int id;
  String day;
  String first_subject;
  String first_time;
  String second_subject;
  String second_time;
  String created_at;
  String updated_at;

	Data.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		day = map["day"],
		first_subject = map["first_subject"],
		first_time = map["first_time"],
		second_subject = map["second_subject"],
		second_time = map["second_time"],
		created_at = map["created_at"],
		updated_at = map["updated_at"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['day'] = day;
		data['first_subject'] = first_subject;
		data['first_time'] = first_time;
		data['second_subject'] = second_subject;
		data['second_time'] = second_time;
		data['created_at'] = created_at;
		data['updated_at'] = updated_at;
		return data;
	}
}
