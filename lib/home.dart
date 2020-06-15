import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'post.dart';
import 'listposts.dart';

Future<List<Post>> fetchPosts(http.Client client) async {

  //final response = await client.get('https://jsonplaceholder.typicode.com/posts');
  String url = 'http:///hrms/hrms_api/webservices/index.php?apicall=geteventdetails';
  Map<String, dynamic> body = {'comp_id':'1' };
  final response = await http.post(url,
      body: body,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded"
      },
      encoding: Encoding.getByName("utf-8")
  );

  print(response);
  return compute(parsePosts, response.body);
}

List<Post> parsePosts(String responseBody) {
  var data = json.decode(responseBody);
  var rest = data["Response"] as List;
    print(rest);
  return rest.map<Post>((json) => Post.fromJson(json)).toList();
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Post>>(
        future: fetchPosts(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? ListViewPosts(posts: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}