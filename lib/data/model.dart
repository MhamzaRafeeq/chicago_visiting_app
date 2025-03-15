import 'package:flutter/material.dart';

class Place {
  final PlaceCategory category;
  final String title;
  final List<String> images;
  final List<String> descriptions;

  Place({
    required this.images,
    required this.descriptions,
    required this.title,
    required this.category,
  });
}
enum PlaceCategory {
  Neighbours,
  Sports,
  Events
}