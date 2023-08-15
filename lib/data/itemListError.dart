import 'dart:convert';

ItemListError userErrorFromJson(String str) => ItemListError.fromJson(json.decode(str));

String userErrorToJson(ItemListError data) => json.encode(data.toJson());

class ItemListError {

  int code;
  String message;

  ItemListError({
    required this.code,
    required this.message,
  });


  factory ItemListError.fromJson(Map<String, dynamic> json) => ItemListError(
    code: json["code"] == null ? null : json["code"],
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "code": code == null ? null : code,
    "message": message == null ? null : message,
  };
}
