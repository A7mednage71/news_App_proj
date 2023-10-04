class AtricalModel {
  final String? image;
  final String? Title;
  final String? SubTitle;
  final String? link;

  AtricalModel(
      {required this.image,
      required this.Title,
      required this.SubTitle,
      required this.link});

  factory AtricalModel.fromjson(json) {
    return AtricalModel(
      image: json['urlToImage'],
      Title: json['title'],
      SubTitle: json['description'],
      link: json['url'],
    );
  }
}

// class Source {
//   final String id;
//   final String name;

//   Source({required this.id, required this.name});
// }
