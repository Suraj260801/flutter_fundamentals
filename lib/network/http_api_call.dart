import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:research/model/post.dart';
import 'package:dartz/dartz.dart';
Future<Either<String,List<Post>>>getPosts() async {
  const String url='https://jsonplaceholder.typicode.com/postss';
  final Logger log=Logger();

  try{
    final Uri uri=Uri.parse(url);
    final http.Response response= await http.get(uri);
    if(response.statusCode==200){

      final List<dynamic> json=jsonDecode(response.body);
      final List<Post> posts=json.map((dynamic map)=>Post.fromJson(map)).toList();
      log.d("Success");
      return right(posts);

    }else{
      final String error="${response.statusCode}:${response.body}";
      throw error;
    }
  }on HttpException{
    return left('Cant Find post');
  } on SocketException{
    return left('No Internet Connection');
  } on FormatException{
    return left('Bad Response Format');
  } catch(e){
    return left(e.toString());
  }


}