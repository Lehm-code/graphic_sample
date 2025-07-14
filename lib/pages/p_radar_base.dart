import 'package:flutter/material.dart';
import 'package:graphic_sample/charts/radar_base_grid.dart';

class RadarBasePage extends StatelessWidget {
  const RadarBasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('graphic グリッド')),
      body: Column(
        children: [
          Center(child: SizedBox(height: 300, child: RadarBaseChart())),
        ],
      ),
    );
  }
}
