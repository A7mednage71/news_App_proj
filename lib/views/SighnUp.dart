import 'package:flutter/material.dart';
import 'package:newwws_proj/services/Textfieldwedg.dart';
import 'package:newwws_proj/views/Home_view.dart';
import 'package:newwws_proj/views/Login.dart';

class SignUp_page extends StatelessWidget {
  const SignUp_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Image.asset('assets/signup3d.jpg'),
            ),
            const TextFormwedgit(
              name: 'User Name',
              icon: Icon(Icons.person),
              obsure: false,
            ),
            const TextFormwedgit(
              name: 'Email',
              icon: Icon(Icons.email),
              obsure: false,
            ),
            const TextFormwedgit(
              name: 'Password',
              icon: Icon(Icons.lock),
              obsure: true,
            ),
            const TextFormwedgit(
              name: 'Confirm Password',
              icon: Icon(Icons.lock),
              obsure: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: MaterialButton(
                  height: 50,
                  color: Color(0xff4B48F0),
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext) {
                          return Home_newss();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don have an account ?'),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext) {
                          return Login_page();
                        },
                      ),
                    );
                  },
                  child: const Text('Login In'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
