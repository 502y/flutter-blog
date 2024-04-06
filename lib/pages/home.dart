import 'package:flutter/material.dart';

import '../blog_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String router = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    //构建点击按钮
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
      body: Row(
        children: [
          NavigationRail(
            trailing: const Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: FlutterLogo(),
              ),
            )),
            onDestinationSelected: (i) => pageController.jumpToPage(i),
            destinations: destination,
            selectedIndex: 1,
          ),
          Expanded(
            child: PageView(controller: pageController, children: [
              //Flutter部分
              Container(
                alignment: Alignment.topLeft,
                child: ListView.builder(
                    controller: ScrollController(),
                    itemCount: flutterName.length,
                    itemBuilder: (BuildContext context, int i) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            flutterName[i],
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      );
                    }),
              ),
              Text("2")
            ]),
          ),
        ],
      ),
    );
  }
}
