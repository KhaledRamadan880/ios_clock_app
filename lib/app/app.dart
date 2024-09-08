import 'package:flutter/material.dart';
import 'package:ios_clock_app/core/theme/theme.dart';

class IosClockApp extends StatelessWidget {
  const IosClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const Scaffold(),
    );
  }
}
