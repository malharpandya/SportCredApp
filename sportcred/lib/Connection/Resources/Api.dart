import 'dart:async';
import 'package:http/http.dart' show Client;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../../models/Post.dart';

class ApiProvider {
  Client client = Client();
  final _apiKey = 'your_api_key';

  Future<List<Post>> getPosts(String apiKey) async {
    final response = await client
        .get("http://127.0.0.1:5000/api/posts",
        headers: {
          "Authorization" : apiKey
        },
        );
    final Map result = json.decode(response.body);
    if (response.statusCode == 201) {
      // If the call to the server was successful, parse the JSON
      List<Post> posts = [];
      for (Map json_ in result["data"]) {
        try {
          posts.add(Post.fromJson(json_));
        }
        catch (Exception) {
          print(Exception);
        }
      }
      for (Post post in posts) {
        print(post.id);
      }
      return posts;
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load tasks');
    }
  }

  Future addPost(String apiKey, String title, String desc) async {
    final response = await client
        .post("http://127.0.0.1:5000/api/posts",
        headers: {
          "Authorization" : apiKey
        },
        body: jsonEncode({
	        "title" : title,
          "desc" : desc,
        })
        );
    if (response.statusCode == 201) {
      print("Post added");
    } else {
      // If that call was not successful, throw an error.
      print(json.decode(response.body));
      throw Exception('Failed to load posts');
    }
  }

 saveApiKey(String api_key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('API_Token', api_key);
 }
}