// To parse this JSON data, do
//
//     final learn = learnFromJson(jsonString);

import 'dart:convert';

List<Learn> learnFromJson(String str) => List<Learn>.from(json.decode(str).map((x) => Learn.fromJson(x)));

String learnToJson(List<Learn> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Learn {
  Learn({
    required this.name,
    required this.image,
    required this.url,
  });

  String name;
  String image;
  String url;

  factory Learn.fromJson(Map<String, dynamic> json) => Learn(
    name: json["name"],
    image: json["image"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image": image,
    "url": url,
  };
}
