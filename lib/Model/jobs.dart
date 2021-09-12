// To parse this JSON data, do
//
//     final job = jobFromJson(jsonString);

import 'dart:convert';

List<Job> jobFromJson(String str) => List<Job>.from(json.decode(str).map((x) => Job.fromJson(x)));

String jobToJson(List<Job> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Job {
  Job({
    required this.name,
    required this.description,
    required this.image,
    required this.htmlBody,
    required this.lastUpdate,
    required this.url,
  });

  String name;
  String description;
  String image;
  String htmlBody;
  String lastUpdate;
  String url;

  factory Job.fromJson(Map<String, dynamic> json) => Job(
    name: json["name"],
    description: json["description"],
    image: json["image"],
    htmlBody: json["html_body"],
    lastUpdate: json["last_update"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "image": image,
    "html_body": htmlBody,
    "last_update": lastUpdate,
    "url": url,
  };
}
