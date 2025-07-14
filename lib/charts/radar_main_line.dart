import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:graphic_sample/mocks/subject_score_mock.dart';
import 'package:graphic_sample/utils/data.dart';

final data = closeRadarData(mockSubjectScores);

class RadarMainChart extends StatelessWidget {
  const RadarMainChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Chart(
            data: data,
            variables: {
              'label': Variable(
                accessor: (Map<String, dynamic> map) => map['label'] as String,
              ),
              'value': Variable(
                accessor: (Map<String, dynamic> map) => map['value'] as num,
              ),
            },
            coord: PolarCoord(),
            axes: [Defaults.radialAxis, Defaults.circularAxis],
            marks: [
              LineMark(color: ColorEncode(value: Colors.blue)),
              AreaMark(color: ColorEncode(value: Colors.blue.withAlpha(76))),
            ],
          ),
        ),
      ),
    );
  }
}
