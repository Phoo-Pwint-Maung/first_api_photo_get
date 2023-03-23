import 'package:api_photo_get/add_page.dart';
import 'package:api_photo_get/minus_page.dart';
import 'package:api_photo_get/provider/providers_list.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: provider,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AddPage(title: "StateManagement"),
        routes: {"/minus_page": (context) => const MinusPage(title: "Minus")},
      ),
    );
  }
}
