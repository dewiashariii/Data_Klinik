import 'package:flutter/material.dart';
import 'package:data_klinik/ui/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Klinik APP',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
