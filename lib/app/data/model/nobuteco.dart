// To parse this JSON data, do
//
//     final nobuteco = nobutecoFromJson(jsonString);

import 'dart:convert';

Nobuteco nobutecoFromJson(String str) => Nobuteco.fromJson(json.decode(str));

String nobutecoToJson(Nobuteco data) => json.encode(data.toJson());

class Nobuteco {
  Nobuteco({
    required this.name,
    required this.asset,
    required this.logo,
    required this.description,
    required this.subtTitle,
    required this.instructions,
  });

  String name;
  String asset;
  String logo;
  String subtTitle;
  String description;
  List<String> instructions;

  factory Nobuteco.fromJson(Map<String, dynamic> json) => Nobuteco(
    name: json["name"],
    subtTitle: json["subtTitle"],
    asset: json["asset"],
    logo: json["logo"],
    description: json["description"],
    instructions: List<String>.from(json["instructions"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "asset": asset,
    "logo": logo,
    "subtTitle": subtTitle,
    "description": description,
    "instructions": List<dynamic>.from(instructions.map((x) => x)),
  };
}
