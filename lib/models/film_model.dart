class FilmModel {
  String url;
  String title;
  String episodeId;
  String openingCrawl;
  String director;
  String producer;
  String releaseDate;
  DateTime created;
  DateTime edited;

  FilmModel({
    this.url,
    this.title,
    this.episodeId,
    this.openingCrawl,
    this.director,
    this.producer,
    this.releaseDate,
    this.created,
    this.edited,
  });

  FilmModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    title = json['title'];
    episodeId = json['episodeId'];
    openingCrawl = json['openingCrawl'];
    director = json['director'];
    producer = json['producer'];
    releaseDate = json['releaseDate'];
    created = DateTime.parse(json['created']);
    edited = DateTime.parse(json['edited']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'title': title,
      'episodeId': episodeId,
      'openingCrawl': openingCrawl,
      'director': director,
      'producer': producer,
      'releaseDate': releaseDate,
      'created': created.toString(),
      'edited': edited.toString(),
    };
  }
}
