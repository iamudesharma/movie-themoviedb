import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_themoviedb/controller/movie_controler.dart';
// import 'package:movie_themoviedb/models/movie_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(MovieController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movie App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
