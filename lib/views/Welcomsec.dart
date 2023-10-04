import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:newwws_proj/views/Login.dart';

class Welcomsec extends StatelessWidget {
  const Welcomsec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/animations/animation_ln25uaiw.json'),
          Lottie.asset('assets/animations/animation_ln24ogm1.json'),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.orange, width: 2.0)),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return Login_page();
                    },
                  ),
                );
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
