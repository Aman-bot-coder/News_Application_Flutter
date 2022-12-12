import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:innews/Model/NewsModel.dart';


class FetchNews{
  static List sourcesId = [
    "abc-news",

    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",

    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",

    "national-geographic",

    "news24",
    "new-scientist",

    "new-york-magazine",
    "next-big-future",

    "techcrunch",
    "techradar",

    "the-hindu",

    "the-wall-street-journal",

    "the-washington-times",
    "time",
    "usa-today",

  ];
  static List KeyId = [
    "d10ddb9564d140318f45095da5e01fbb",
    "e47d293a815449df81da29f572ec7064",
    "a9654ec8c8684f238d6fdb1a4fe6d912", //codexminati197@gmail.com
    "40233b868b84432db70dfabe228628e1"

  ];
  static Future<NewsModel> fetchNews() async{
    final _random = new Random();
    var element = sourcesId[_random.nextInt(sourcesId.length)];
    final _nRandom = new Random();
    var apikey = KeyId[_nRandom.nextInt(KeyId.length)];
    Response response = await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$element&apiKey=$apikey"));
    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    final _Newrandom = new Random();
    var NewArticle = articles[_random.nextInt(articles.length)];
    // print(NewArticle);
    return NewsModel.FromApitoApp(NewArticle);
    // print(element);
    // print(articles);

  }

}