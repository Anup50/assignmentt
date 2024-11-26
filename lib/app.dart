
import 'package:assignmentt/view/ari_view.dart';
import 'package:assignmentt/view/dashboard_view.dart';
import 'package:assignmentt/view/simpleintrest_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),

    );
  }
}