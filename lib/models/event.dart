import 'dart:convert';

///This file defines the Event model and stores the list of sample events.

class Event {
  Event({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.time,
    this.category,
    this.isFavorite = false,
  });

  final String id;
  final String name;
  final String description;
  final String location;
  final DateTime time;
  final String? category;
  bool isFavorite;

  void toggleIsFav() {
    isFavorite = !isFavorite;
  }

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json["id"],
      name: json["title"],          
      description: json["description"],
      location: json["location"],
      time: DateTime.parse(json["startTime"]),
      category: json["category"],
      isFavorite: json["isFavorite"] ?? false,
    );
  }

  static List<Event> listFromJson(String jsonStr) {
    final data = json.decode(jsonStr) as List;
    return data.map((e) => Event.fromJson(e)).toList();
  }
}

List<Event> events = [];
