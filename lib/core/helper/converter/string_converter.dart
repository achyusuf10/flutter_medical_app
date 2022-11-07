import 'package:freezed_annotation/freezed_annotation.dart';

class StringToInteger implements JsonConverter<int, dynamic> {
  const StringToInteger();
  @override
  int fromJson(dynamic json) {
    if (json.runtimeType == String) return int.parse(json);
    if (json.runtimeType == int) return json;
    return 0;
  }

  @override
  String toJson(dynamic object) {
    return object.toString();
  }
}

class StringToBoolAgenda implements JsonConverter<bool, dynamic> {
  const StringToBoolAgenda();

  @override
  bool fromJson(json) {
    if (json.runtimeType == String) {
      json as String;
      return json.toLowerCase().contains('sudah');
    } else if (json.runtimeType == bool) {
      json as bool;
      return json;
    } else {
      return false;
    }
  }

  @override
  toJson(bool object) {
    return object;
  }
}
