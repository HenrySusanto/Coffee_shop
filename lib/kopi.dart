
class Kopi{
  late String title;
  late String description;
  late String urlToImage;
  late String publishedAt;

  Kopi ({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.publishedAt,
  });

  Kopi.fromJson(Map<String, dynamic> article) {

    title = article['title'];
    description = article['description'];
    urlToImage = article['urlToImage'];
    publishedAt = article['publishedAt'];

  }

}



