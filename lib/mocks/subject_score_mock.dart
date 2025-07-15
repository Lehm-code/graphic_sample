final List<Map<String, dynamic>> mockSubjectScores = [
  {'label': '国語', 'value': 81},
  {'label': '数学', 'value': 92},
  {'label': '英語', 'value': 68},
  {'label': '理科', 'value': 86},
  {'label': '社会', 'value': 42},
];

final subjects = ['国語', '数学', '英語', '理科', '社会'];
final groups = ['20', '40', '60', '80', '100'];

final List<Map<String, dynamic>> mockSubjectGridScores = [
  for (var group in groups)
    for (var subject in subjects)
      {'label': subject, 'value': double.parse(group), 'group': group},
];
