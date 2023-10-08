import 'dart:convert';

import 'package:logger/logger.dart';

import '../model/post.dart';
import 'package:dio/dio.dart';

Future<List<Post>> getPosts() async{
    final Dio dio=Dio();
    const String url='https://jsonplaceholder.typicode.com/posts';
    final log=Logger();
    try{
      //final Uri uri=Uri.parse(url);
      final Response response= await dio.get(url);
      if(response.statusCode==200){
        //log.d("Success");
        //final List<dynamic> json=jsonDecode(response.data);
        final List<dynamic> json=response.data;
        final List<Post> posts=json.map((dynamic map)=>Post.fromJson(map)).toList();
        return posts;
      }else{
        log.d(response.statusCode);
        log.d(response.data);
      }
    }catch(e){
      //log.d(e);
    }
    return [];


}