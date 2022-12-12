import 'package:flutter/material.dart';
import 'package:innews/View/Widget/ReadMore.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsctn;
  NewsContainer({Key?key,
    required this.imgUrl,
    required this.newsDes,
    required this.newsHead,
    required this.newsUrl,
    required this.newsctn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInImage.assetNetwork(height: 400,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                placeholder: "assets/applogoo.png", image: imgUrl),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(newsHead.length>70? "${newsHead.substring(0,70)}...":newsHead,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text(newsDes,style: TextStyle(fontSize: 10,color: Colors.black54)),
                  SizedBox(height: 15,),
                  Text("${newsctn.toString().substring(0,newsctn.length-15)}....",style: TextStyle(fontSize: 12,color: Colors.black),)
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>ReadMore(newsUrl: newsUrl) ));
                }, child: Text("Read More")),
              ],
            )),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
