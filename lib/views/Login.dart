import 'package:flutter/material.dart';
import 'package:newwws_proj/services/Textfieldwedg.dart';
import 'package:newwws_proj/views/Home_view.dart';
import 'package:newwws_proj/views/SighnUp.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: double.infinity,
              child: Image.asset('assets/3dlogin.jpg'),
            ),
            const TextFormwedgit(
              name: 'User Name',
              icon: Icon(Icons.person),
              obsure: false,
            ),
            const TextFormwedgit(
              name: 'Password',
              icon: Icon(Icons.lock),
              obsure: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: MaterialButton(
                  height: 50,
                  color: Color(0xff9B4EC4),
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
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don`t have an account ?'),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext) {
                          return SignUp_page();
                        },
                      ),
                    );
                  },
                  child: Text('Sign Up'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
