import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
}

String getMovieData({required String movieData, required String key}) {
  final movieMap = jsonDecode(movieData);
  return movieMap[key];
}

void main() async {
  final movieInfo = await getMovieInfo()
      .then((movieData) => getMovieData(movieData: movieData, key: 'director'));
  print(movieInfo);
}
