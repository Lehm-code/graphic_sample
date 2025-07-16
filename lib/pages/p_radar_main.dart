import 'package:flutter/material.dart';
import 'package:graphic_sample/charts/radar_main_line.dart';

class RadarMainPage extends StatelessWidget {
  const RadarMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('graphic メイン')),
      body: Center(child: SizedBox(height: 300, child: RadarMainChart())),
    );
  }
}
