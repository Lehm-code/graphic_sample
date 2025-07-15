import 'package:flutter/material.dart';
import 'package:graphic_sample/charts/radar_main_line.dart';
import 'package:graphic_sample/charts/radar_base_grid.dart';

class RadarBasePage extends StatelessWidget {
  const RadarBasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('graphic')),
      body: Center(
        child: Stack(
          children: [
            SizedBox(height: 300, child: RadarBaseChart()),
            SizedBox(height: 300, child: RadarMainChart()),
          ],
        ),
      ),
    );
  }
}
