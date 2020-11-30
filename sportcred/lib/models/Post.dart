import 'dart:convert';

class Post{
  String title;
  String desc;
  String upvotes; 
  String connection;
  String id;

  Post(this.title, this.desc, this.upvotes, this.connection, this.id);

  factory Post.fromJson(Map<String, dynamic> parsedJson) {
    return Post(
      parsedJson['title'],
      parsedJson['desc'],
      parsedJson['upvotes'],
      parsedJson['connection'],
      parsedJson['id']
    );
  }
}