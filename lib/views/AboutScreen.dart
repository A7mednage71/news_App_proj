
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          'About Us',
          style: TextStyle(
              color: Color(0xff9B4EC4),
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Lottie.asset('assets/animations/animation_ln3kxtyx.json',
              width: 250, height: 250),
          Center(
            child: Text(
              'Welcome to Daily News',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "At Daily News, we are dedicated to delivering accurate and timely news. With 20 years of history, we have become a trusted source of information in our community.",
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "We uphold the highest standards of accuracy, fairness, and objectivity. Each article is thoroughly researched and verified before publication."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Your feedback is important to us. We value your engagement and encourage you to share your thoughts, suggestions, and story ideas."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Thank you for choosing Daily News as your reliable source of news and information. We are honored to serve you."),
                SizedBox(
                  height: 30,
                ),
                Text(
                  " Ahmed Ben Nageh",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(" Editor-in-Chief, Daily News"),
                SizedBox(
                  height: 25,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 2, color: Colors.orange),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Rate Us',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
