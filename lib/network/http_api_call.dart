import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;
import 'package:research/model/post.dart';
Future<List<Post>>getPosts() async {
  const String url='https://jsonplaceholder.typicode.com/posts';
  final log=Logger();
  try{
    final Uri uri=Uri.parse(url);
    final http.Response response= await http.get(uri);
    if(response.statusCode==200){
      log.d("Success");
      final List<dynamic> json=jsonDecode(response.body);
      final List<Post> posts=json.map((dynamic map)=>Post.fromJson(map)).toList();
      return posts;
    }else{
      log.d(response.statusCode);
      log.d(response.body);
    }
  }catch(e){
      log.d(e);
  }
  return [];


}