import 'package:flutter/material.dart';
import 'package:innews/Model/NewsModel.dart';
import 'package:innews/View/Widget/NewsContainer.dart';

import '../Controller/FetchNews.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoadig = true;
  late NewsModel newsModel;
  GetNews()async{
    newsModel = await FetchNews.fetchNews();
    setState(() {
        isLoadig = false;
    });
  }
  void initState(){
    GetNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
        onPageChanged: (value){
          setState(() {
            isLoadig = true;
          });
          GetNews();
        },
        itemBuilder: (context,index){
          return isLoadig?Center(child:CircularProgressIndicator()):NewsContainer(
              imgUrl: newsModel.imgUrl,
              newsDes: newsModel.newsDes,
              newsHead: newsModel.newsHead,
              newsUrl: newsModel.newsUrl,
              newsctn: newsModel.newsctn,);
        },
      ),
    );
  }
}
