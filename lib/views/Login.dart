import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newwws_proj/services/Textfieldwedg.dart';
import 'package:newwws_proj/services/snakbar.dart';
import 'package:newwws_proj/views/Home_view.dart';
import 'package:newwws_proj/views/SighnUp.dart';

class Login_page extends StatelessWidget {
  Login_page({super.key});

  String? email;
  String? password;

  GlobalKey<FormState> keyform = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.amber,
                  size: 50,
                )),
          )
        ],
      ),
      body: Form(
        key: keyform,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                child: Image.asset('assets/3dlogin.jpg'),
              ),
              TextFormwedgit(
                word: (data) {
                  email = data;
                },
                name: 'Email',
                icon: Icon(Icons.person),
                obsure: false,
              ),
              TextFormwedgit(
                word: (data) {
                  password = data;
                },
                name: 'Password',
                icon: Icon(Icons.lock),
                obsure: true,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: MaterialButton(
                  height: 50,
                  color: Color(0xff9B4EC4),
                  minWidth: double.infinity,
                  onPressed: () async {
                    if (keyform.currentState!.validate()) {
                      try {
                        final credential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email!, password: password!);
                        // ShowSnak(context, 'Succes');
                        Navigator.pushNamed(context, Home_newss.id);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          ShowSnak(context, 'No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          ShowSnak(context,
                              'Wrong password provided for that user.');
                        }
                      } catch (e) {
                        ShowSnak(context, 'there is an error !');
                      }
                    } else {}
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
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
      ),
    );
  }
}
