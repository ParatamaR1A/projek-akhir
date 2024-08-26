import 'package:flutter/material.dart';
import 'package:ln_list/ln_page.dart';
import 'package:ln_list/main_page.dart';
import 'package:ln_list/login.dart';
import 'package:ln_list/singUp.dart';

void main() async{
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LnPage()
    );
  }
}
