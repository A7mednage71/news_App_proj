import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ContactvsHelp extends StatelessWidget {
  const ContactvsHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Contact Us',
          style: TextStyle(
              color: Color(0xff9B4EC4),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              child: Lottie.asset('assets/animations/animation_ln3sxejw.json',
                  width: double.infinity, height: 200),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ContactRow(
            txt: 'Face book',
            lot: 'assets/animations/animation_ln3qazap.json',
          ),
          ContactRow(
            txt: 'Instagram',
            lot: 'assets/animations/animation_ln3qbev5.json',
          ),
          ContactRow(
            txt: '   Twitter   ',
            lot: 'assets/animations/animation_ln3qbxrg.json',
          ),
          ContactRow(
            txt: '     Email     ',
            lot: 'assets/animations/animation_ln3t7lej.json',
          ),
        ],
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  const ContactRow({
    super.key,
    required this.txt,
    required this.lot,
  });

  final String txt;
  final String lot;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Row(
        children: [
          Lottie.asset(lot, width: 100, height: 100),
          Spacer(),
          Lottie.asset('assets/animations/animation_ln3upq0k.json',
              width: 100, height: 100),
          Spacer(),
          Container(
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              child: Text(txt),
            ),
          )
        ],
      ),
    );
  }
}
