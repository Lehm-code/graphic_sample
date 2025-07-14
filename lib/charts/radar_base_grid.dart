import 'package:flutter/material.dart';
import 'dart:math';

import 'package:graphic/graphic.dart';
import 'package:graphic_sample/mocks/subject_score_mock.dart';

class RadarBaseChart extends StatelessWidget {
  const RadarBaseChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Chart(
            data: mockSubjectGridScores,
            variables: {
              'label': Variable(
                accessor: (Map<String, dynamic> map) => map['label'] as String,
              ),
              'value': Variable(
                accessor: (Map<String, dynamic> map) => map['value'] as num,
              ),
              'group': Variable(
                accessor: (Map<String, dynamic> map) => map['group'] as String,
              ),
            },
            coord: PolarCoord(
              startAngle: -pi / 2 - 2 * pi / 10,
              endAngle: 3 * pi / 2 - 2 * pi / 10,
            ),
            axes: [
              Defaults.radialAxis
                ..line = null
                ..label = null
                ..tickLine = null
                ..grid = null,
              Defaults.circularAxis
                ..line = null
                ..label = null
                ..tickLine = null
                ..grid = null,
            ],
            marks: [
              LineMark(color: ColorEncode(value: Colors.red.withAlpha(76))),
            ],
          ),
        ),
      ),
    );
  }
}
