import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:graphic_sample/constants/chart.dart';
import 'package:graphic_sample/mocks/subject_score_mock.dart';
import 'package:graphic_sample/theme/colors.dart';
import 'package:graphic_sample/utils/angle.dart';
import 'package:graphic_sample/utils/rating.dart';

class RadarMainChart extends StatelessWidget {
  const RadarMainChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 16),
      child: Chart(
        data: mockSubjectScores,
        variables: {
          'label': Variable(
            accessor: (Map map) {
              final label = map['label'].toString();
              final value = map['value'] as int;
              final rating = scoreToRating(value);
              return '$label: ${value.toString()}点\n$rating';
            },
          ),
          'value': Variable(
            accessor: (Map map) => map['value'] as num,
            scale: LinearScale(min: 0, max: 100),
          ),
        },
        coord: PolarCoord(
          startAngle: startAngleData(mockSubjectScores),
          endAngle: endAngleData(mockSubjectScores),
          endRadius: endRadius,
        ),
        axes: [
          Defaults.circularAxis
            ..label = LabelStyle(
              textAlign: TextAlign.center,
              span: (text) {
                final lines = text.split('\n');
                if (lines.length < 2) {
                  return TextSpan(text: text);
                }
                final rating = lines[1].trim();
                return TextSpan(
                  children: [
                    TextSpan(
                      text: '${lines[0]}\n',
                      style: const TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: rating,
                      style: TextStyle(
                        color: getColorForRating(rating),
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                );
              },
            )
            ..grid = null
            ..line = null,
          Defaults.radialAxis
            ..line = null
            ..grid = null
            ..label = null,
        ],
        marks: [
          LineMark(
            position: Varset('label') * Varset('value'),
            color: ColorEncode(value: Colors.blue),
            shape: ShapeEncode(value: BasicLineShape(loop: true)),
          ),
          AreaMark(
            position: Varset('label') * Varset('value'),
            color: ColorEncode(value: Colors.blue.withAlpha(76)),
            shape: ShapeEncode(value: BasicAreaShape(loop: true)),
          ),
        ],
      ),
    );
  }
}
