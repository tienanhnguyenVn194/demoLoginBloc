import 'dart:convert';

class Car {
  String id;
  String time;
  String start;
  String end;
  String idS;

  Car(String id,String time, String start, String end, String idS){
    this.id = id;
    this.time=time;
    this.start=start;
    this.end=end;
    this.idS=idS;
  }

  Car.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        time = map['time'],
        start = map['start'],
        end = map['end'],
        idS = map['idS'];

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["time"] = time;
    map["start"] = start;
    map["end"] = end;
    map["idS"] = idS;
    return map;
  }

}