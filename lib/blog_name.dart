import 'dart:core';

import 'package:flutter/material.dart';

const List<String> flutterName = ["ListView", "HTML初步"];
const List<String> blogType = [
  "Flutter",
  "HTML",
  "CSS(building)",
  "JS(Building)"
];

const List<NavigationRailDestination> destination = [
  NavigationRailDestination(icon: FlutterLogo(), label: Text("Flutter")),
  NavigationRailDestination(icon: Icon(Icons.html), label: Text("HTML")),
];
