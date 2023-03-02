import 'package:flutter/material.dart';

class Artist {
  Artist({required this.name, required this.albumName, required this.cover});

  late Image cover;
  late String name;
  late String albumName;
}
