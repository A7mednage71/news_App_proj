import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newwws_proj/services/Textfieldwedg.dart';
import 'package:newwws_proj/services/snakbar.dart';
import 'package:newwws_proj/views/Home_view.dart';
import 'package:newwws_proj/views/Login.dart';

class SignUp_page extends StatelessWidget {
  SignUp_page({super.key});

  String? email;
  String? pasword;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Image.asset('assets/signup3d.jpg'),
              ),
              TextFormwedgit(
                name: 'User Name',
                icon: Icon(Icons.person),
                obsure: false,
              ),
              TextFormwedgit(
                word: (data) {
                  email = data;
                },
                name: 'Email',
                icon: Icon(Icons.email),
                obsure: false,
              ),
              TextFormwedgit(
                word: (data) {
                  pasword = data;
                },
                name: 'Password',
                icon: Icon(Icons.lock),
                obsure: true,
              ),
              TextFormwedgit(
                name: 'Confirm Password',
                icon: Icon(Icons.lock),
                obsure: true,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: MaterialButton(
                    height: 50,
                    color: Color(0xff4B48F0),
                    minWidth: double.infinity,
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        try {
                          final credential = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                            email: email!,
                            password: pasword!,
                          );
                          //  ShowSnak(context, 'Succes');
                          Navigator.pushNamed(context, Home_newss.id);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            ShowSnak(
                                context, 'The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            ShowSnak(context,
                                'The account already exists for that email.');
                          }
                        } catch (e) {
                          ShowSnak(context, 'there is an Error!');
                        }
                      } else {}
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (BuildContext) {
                      //       return Home_newss();
                      //     },
                      //   ),
                      // );
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
                      Navigator.pop(context);
                    },
                    child: const Text('Login In'),
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
