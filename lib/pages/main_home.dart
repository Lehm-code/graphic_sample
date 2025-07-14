import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphic_sample/charts/radar_base_grid.dart';

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
            ElevatedButton(
              onPressed: () => context.push('/radar'),
              child: const Text('レーダーチャート'),
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
            SizedBox(height: 300, child: RadarBaseChart()),
          ],
        ),
      ),
    );
  }
}
