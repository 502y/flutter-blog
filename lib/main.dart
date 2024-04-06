import 'package:flutter/material.dart';
import 'package:flutter_blog/model/navigator_model.dart';
import 'package:flutter_blog/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: NavigatorModel()),
      ],
      child: MaterialApp(
        title: '502y\'s Blog',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
          fontFamily: 'MiSans',
        ),
        initialRoute: '/home',
        routes: {
          HomePage.router: (context) => const HomePage(),
        },
      ),
    );
  }
}
