import 'package:flutter/material.dart';

import '../blog_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String router = '/home';
  @override
  Widget build(BuildContext context) {
    Widget clickableTextMenu(int i) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/${blogType[i]}");
        },
        child: Text(blogType[i]),
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView.builder(
            controller: ScrollController(),
            itemCount: blogType.length,
            itemBuilder: (BuildContext context, int i) {
              return clickableTextMenu(i);
            }),
      ),
    );
  }
}
