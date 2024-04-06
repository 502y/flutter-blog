import 'dart:core';

import 'package:flutter/material.dart';

const List<String> navigatorList = ["ListView", "HTML初步"];

const List<String> blogType = [
  "Flutter",
  "HTML",
  "CSS(building)",
  "JS(Building)"
];

List<NavigationRailDestination> destination = [
  const NavigationRailDestination(icon: FlutterLogo(), label: Text("Flutter")),
  const NavigationRailDestination(icon: Icon(Icons.html), label: Text("HTML")),
];
