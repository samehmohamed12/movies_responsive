import 'package:flutter/material.dart';
import 'package:movies_app/core/services/services_locator.dart';
import 'package:movies_app/core/utilis/app_string.dart';
import 'movies/presentation/screens/movies_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.grey.shade900),
      home: const MoviesScreen(),
    );
  }


}


