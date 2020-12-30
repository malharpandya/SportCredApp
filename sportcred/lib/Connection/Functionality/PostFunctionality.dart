import '../Resources/Repository.dart';
import 'package:rxdart/rxdart.dart';
import '../../models/Post.dart';

class PostFunctionality {
  final _repository = Repository();
  final _postSubject = BehaviorSubject<List<Post>>();
  String apiKey;

  var _posts = <Post>[];

  PostFunctionality(String api_key) {
    this.apiKey = api_key;
    _updatePosts(api_key).then((_) {
      _postSubject.add(_posts);
    });
  }


  Stream<List<Post>> get getPosts => _postSubject.stream;

  Future<Null> _updatePosts(String apiKey) async {
    _posts = await _repository.getPosts(apiKey);
  }

  Future<Null> upvote(String id, bool upvoted) async {
    _posts = await _repository.upvote(id, upvoted);
  }

  Future<Null> addPosts(String apiKey, String title, String desc) async {
    _posts = await _repository.addPost(apiKey, title, desc);
  }

}