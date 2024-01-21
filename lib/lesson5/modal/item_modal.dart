import 'dart:convert';

Item itemFromJson(String str) => Item.fromJson(json.decode(str));

String itemToJson(Item data) => json.encode(data.toJson());

class Item {
  String name;
  String image;
  bool status;

  Item({
    required this.name,
    required this.image,
    required this.status,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        image: json["image"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "status": status,
      };
}
