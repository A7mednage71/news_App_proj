import 'package:flutter/material.dart';

class Welcom_page extends StatelessWidget {
  const Welcom_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[600],
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage('assets/eeee.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: Colors.orange, width: 2.0),
                ),
                child: MaterialButton(
                  height: 60,
                  minWidth: 60,
                  onPressed: () {},
                  child: Text(
                    "Let's Go...!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Welcome..',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/hands.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
