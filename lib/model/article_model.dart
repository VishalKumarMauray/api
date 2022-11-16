import 'source_model.dart';

class Article{
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String,dynamic>json){
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] ?? "--",
      title: json['title'] ?? "--",
      description: json['description'] ?? "--",
      url: json['url'] ?? "https://news.google.com/topstories?hl=en-IN&gl=IN&ceid=IN:en",
      urlToImage: json['urlToImage'] ?? "https://www.google.com/url?sa=i&url=https%3A%2F%2Fmobile.twitter.com%2Fbreakingnews&psig=AOvVaw2XjvsIKK0iE9yMqY0dMcNu&ust=1668664523070000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMjT4fWBsvsCFQAAAAAdAAAAABAE",
      publishedAt: json['publishedAt'] ?? "--",
      content: json['content'] ?? "--",
    );
  }
}