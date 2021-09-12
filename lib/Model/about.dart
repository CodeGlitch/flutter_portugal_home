// To parse this JSON data, do
//
//     final about = aboutFromJson(jsonString);

import 'dart:convert';

List<About> aboutFromJson(String str) => List<About>.from(json.decode(str).map((x) => About.fromJson(x)));

String aboutToJson(List<About> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class About {
  About({
    required this.name,
    required this.description,
    required this.image,
    required this.github,
    required this.linkedin,
    required this.twitter,
  });

  String name;
  String description;
  String image;
  String github;
  String linkedin;
  String twitter;

  factory About.fromJson(Map<String, dynamic> json) => About(
    name: json["name"],
    description: json["description"],
    image: json["image"],
    github: json["github"],
    linkedin: json["linkedin"],
    twitter: json["twitter"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "image": image,
    "github": github,
    "linkedin": linkedin,
    "twitter": twitter,
  };
}
