import 'package:flutter/material.dart';

import 'package:graphic/graphic.dart';
import 'package:graphic_sample/constants/chart.dart';
import 'package:graphic_sample/mocks/subject_score_mock.dart';
import 'package:graphic_sample/utils/angle.dart';

class RadarBaseChart extends StatelessWidget {
  const RadarBaseChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 16),
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
          startAngle: startAngleData(mockSubjectScores),
          endAngle: endAngleData(mockSubjectScores),
          endRadius: endRadius,
        ),
        axes: [
          Defaults.radialAxis
            ..label = null
            ..tickLine = null
            // ..grid = null
            ..line = null,
          Defaults.circularAxis
            ..label = null
            ..tickLine = null
            ..grid = null
            ..line = null,
        ],
        marks: [
          LineMark(
            position: Varset('label') * Varset('value') / Varset('group'),
            color: ColorEncode(value: Colors.grey.withAlpha(76)),
            shape: ShapeEncode(value: BasicLineShape(loop: true)),
          ),
        ],
      ),
    );
  }
}
