import 'dart:math';

double startAngleData(List<Map<String, dynamic>> data) {
  double angle = -pi / 2 - pi / data.length;
  return angle;
}

double endAngleData(List<Map<String, dynamic>> data) {
  double angle = 3 * pi / 2 - pi / data.length;
  return angle;
}
