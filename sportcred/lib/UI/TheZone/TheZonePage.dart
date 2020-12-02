import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sportcred/Connection/Functionality/PostFunctionality.dart';
import 'package:sportcred/UI/TheZone/AddPostWidget.dart';
import 'package:sportcred/models/global.dart';
import 'package:sportcred/UI/TheZone/PostWidget.dart';
import 'package:sportcred/models/Post.dart';

class TheZonePage extends StatefulWidget {
  final String username;
  TheZonePage({this.username});
  @override
  TheZonePageState createState() => TheZonePageState();
}

class TheZonePageState extends State<TheZonePage> {

  void _onItemTapped() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddPostWidget(username: widget.username)));
  }

  List<Post> postList = [];
  PostFunctionality pf;

  @override
  void initState() {
    pf = PostFunctionality(widget.username);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundGray,
      appBar: AppBar(
        title: Text(
          "The Zone",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato',
              fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: StreamBuilder(
            stream: pf.getPosts,
            initialData: [],
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot != null) {
                if (snapshot.data.length > 0) {
                  return _buildPostList(context, snapshot.data);
                } else if (snapshot.data.length == 0) {
                  return Center(child: Text('No Data'));
                }
              } else if (snapshot.hasError) {
                return Container();
              }
              return CircularProgressIndicator();
            },
          )),
    );
  }

  _buildPostWidget(BuildContext context, Post post) {
    return PostWidget(
      title: post.title,
      desc: post.desc,
      upvotes: post.upvotes,
      connection: post.connection,
      id: post.id,
    );
  }

  Widget _buildPostList(BuildContext context, List<Post> postList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Image.asset('assets/images/sportcredLogo.png'),
        ),
        Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.only(right: 5.0, bottom: 20.0),
          child: Container(
              height: 20,
              width: 20,
              child: GestureDetector(
                  onTap: _onItemTapped,
                  child: Icon(Icons.add_box_rounded, color: Colors.green))),
        ),
        Expanded(
            child: ListView(
          shrinkWrap: true,
          children: postList
              .map((Post item) => _buildPostWidget(context, item))
              .toList(),
        )),
      ],
    );
  }
}
