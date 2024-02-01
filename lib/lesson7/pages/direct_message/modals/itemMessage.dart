// To parse this JSON data, do
//
//     final itemMessage = itemMessageFromJson(jsonString);

import 'dart:convert';

ItemMessage itemMessageFromJson(String str) =>
    ItemMessage.fromJson(json.decode(str));

String itemMessageToJson(ItemMessage data) => json.encode(data.toJson());

class ItemMessage {
  String name;
  String image;
  int status;
  String message;
  String timeOn;

  ItemMessage({
    required this.name,
    required this.image,
    required this.status,
    required this.message,
    required this.timeOn,
  });

  factory ItemMessage.fromJson(Map<String, dynamic> json) => ItemMessage(
        name: json["name"],
        image: json["image"],
        status: json["status"],
        message: json["message"],
        timeOn: json["timeOn"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "status": status,
        "message": message,
        "timeOn": timeOn,
      };
}
