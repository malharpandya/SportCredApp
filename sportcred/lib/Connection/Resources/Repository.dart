import 'dart:async';
import 'Api.dart';

class Repository {
  final apiProvider = ApiProvider();
  
  Future getPosts(String apiKey) 
    => apiProvider.getPosts(apiKey);

  Future<Null> addPost(String apiKey, String title, String desc) async {
    apiProvider.addPost(apiKey, title, desc);
  }

}