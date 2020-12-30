class Post {
  String id;
  String username;
  String title;
  String body;
  int upvotes;
  List<String> upvoters;

  Post(this.id, this.username, this.title, this.body,
      this.upvotes, this.upvoters);

  factory Post.fromJson(Map<String, dynamic> parsedJson) {
    return Post(parsedJson['id'], parsedJson['username'],
        parsedJson['title'], parsedJson['body'], parsedJson['upvotes'], parsedJson['upvoters']);
  }
}
