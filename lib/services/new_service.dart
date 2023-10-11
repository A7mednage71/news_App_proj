import 'package:dio/dio.dart';
import 'package:newwws_proj/models/article.dart';
import 'package:newwws_proj/models/news_response.dart';

class New_service {
  New_service(this.dio);
  final Dio dio;

  Future<List<AtricalModel>> getnews({required String Catorgy}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$Catorgy&apiKey=3dc1a015e3fb4542841c216c09e0c6bc');

      Map<String, dynamic> jsondata = response.data;

      List<dynamic> articles = jsondata['articles']; // list of maps

      List<AtricalModel> Article_list = [];

      for (var element in articles) {
        AtricalModel article_elemnt = AtricalModel(
          image: element['urlToImage'],
          Title: element['title'],
          SubTitle: element['description'],
          link: element['url'],
        );
        Article_list.add(article_elemnt);
      }
      return Article_list;
    } on Exception {
      return [];
    }
  }

  static Future<NewsResponse> searchNews({required String search}) async {
    final dio = Dio();

    try {
      final response = await dio.get(
        "https://newsapi.org/v2/everything",
        queryParameters: {
          "apiKey": "3dc1a015e3fb4542841c216c09e0c6bc",
          "q": search,
        },
      );

      if (response.statusCode == 200) {
        final json = response.data;
        final searchResponse = NewsResponse.fromJson(json);
        return searchResponse;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
