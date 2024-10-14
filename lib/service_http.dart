import 'package:http/http.dart' as http;
import 'package:flutter_application_4/app/data/models/article.dart';

class ArticleService {
  final String apiUrl =
      'https://my-json-server.typicode.com/Fallid/codelab-api/db';

  Future<Welcome> fetchArticles() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return welcomeFromJson(response.body);
    } else {
      throw Exception('Failed to load articles');
    }
  }
}
