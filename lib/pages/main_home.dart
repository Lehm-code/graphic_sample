import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphic_sample/charts/radar_base_grid.dart';
import 'package:graphic_sample/charts/radar_main_line.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('graphic Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: const [
                SizedBox(height: 300, child: RadarBaseChart()),
                SizedBox(height: 300, child: RadarMainChart()),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.push('/radar/grid'),
              child: const Text('レーダーチャート グリッド'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.push('/radar/main'),
              child: const Text('レーダーチャート メイン'),
            ),
          ],
        ),
      ),
    );
  }
}
