import 'dart:convert';

class Article{
  late String title;
  late String description;
  late String urlToImage;
  late String publishedAt;

  Article ({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.publishedAt,
  });

  Article.fromJson(Map<String, dynamic> article) {

    title = article['title'];
    description = article['description'];
    urlToImage = article['urlToImage'];
    publishedAt = article['publishedAt'];

  }

}

List<Article> parseArticles(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((json) => Article.fromJson(json)).toList();
}



