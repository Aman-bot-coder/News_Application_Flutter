
import 'package:innews/Model/NewsModel.dart';

class NewsModel{
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsctn;


  NewsModel({
    required this.imgUrl,
    required this.newsDes,
    required this.newsHead,
    required this.newsUrl,
    required this.newsctn,
});

  static NewsModel FromApitoApp(Map<String,dynamic> articles){
    return NewsModel(
        imgUrl: articles["urlToImage"]??"https://images.unsplash.com/photo-1585829365295-ab7cd400c167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        newsDes: articles["description"]??"..............",
        newsHead: articles["title"]??"Fetching Error",
        newsUrl: articles["url"]??"https://news.google.com/foryou?hl=en-IN&gl=IN&ceid=IN%3Aen",
        newsctn: articles["content"]??"/..................");
  }

}


