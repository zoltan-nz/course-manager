class Article {
  String articleId;
  String title;
  String content;

  Article({this.title, this.content});

  Article.fromJson(Map json)
  : this.title = json['title'],
    this.content = json['content'];

//  bool save() {
//    print("saved ${this}");
//    return true;
//  }
//
//  static Article find(String id) {
//    return _findById(id);
//  }
//
//  static List<Article> all() {
//    return [];
//  }
//
//  Article _findById(String id) {
//    return new Article({'hello', 'bello'});
//  }

}
