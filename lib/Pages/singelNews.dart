import 'package:flutter/material.dart';
import 'package:flutter_news/Services/api_manger.dart';
import 'package:flutter_news/model/newsInfo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<NewsModel> Newss=API_Manager().getNews();
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: FutureBuilder<NewsModel>(
            builder: (context, snapshot){
              return snapshot.data;
            }
        ),
      ),
    );
  }

}