List<Map<String, dynamic>> closeRadarData(List<Map<String, dynamic>> data) {
  if (data.isEmpty) return [];
  return [...data, Map<String, dynamic>.from(data.first)];
}
