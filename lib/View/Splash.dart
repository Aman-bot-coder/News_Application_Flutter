import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Center(child: Image.asset('assets/applogoo.png',height: 250,width: 250,)),
            SizedBox(height: 10,),
            // Text("I-News",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            Spacer(),
            Text("Developed by Aman Saxena",style: TextStyle(fontSize: 16),)
          ],
        )

        ),
      );
  }
}
