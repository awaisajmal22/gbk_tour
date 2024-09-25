import 'package:flutter/material.dart';
import 'package:gbk_tour/utils/background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: background(context: context, child: Text('hello')),
    );
  }
}
