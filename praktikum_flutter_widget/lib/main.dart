// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:praktikum_flutter_widget/ui/dashboard.dart';
import 'package:praktikum_flutter_widget/ui/search.dart';

void main() {  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple, // Mengubah warna primer menjadi ungu
          brightness: Brightness.light,
        ).copyWith(primary: const Color.fromARGB(255, 255, 255, 255)), // Mengubah warna utama menjadi ungu
        useMaterial3: true,
      ),
      home: const ProductSearchPage(),
    );
  }
}
