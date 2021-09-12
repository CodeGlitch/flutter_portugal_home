// To parse this JSON data, do
//
//     final projects = projectsFromJson(jsonString);

import 'dart:convert';

List<Project> projectsFromJson(String str) => List<Project>.from(json.decode(str).map((x) => Project.fromJson(x)));

String projectsToJson(List<Project> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Project {
  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.url,
  });

  String name;
  String description;
  String image;
  String url;

  factory Project.fromJson(Map<String, dynamic> json) => Project(
    name: json["name"],
    description: json["description"],
    image: json["image"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "image": image,
    "url": url,
  };
}
