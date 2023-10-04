import 'package:flutter/material.dart';
import 'package:newwws_proj/views/Home_view.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext) {
              return Home_newss();
            }));
          },
          icon: Icon(Icons.arrow_back),
          color: Color(0xff4B48F0),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              'Edit Profile',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0, 10),
                        )
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://cdn.vectorstock.com/i/1000x1000/30/21/human-blank-face-with-eps10-vector-25623021.webp'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff4B48F0),
                        shape: BoxShape.circle,
                        border: Border.all(width: 3, color: Colors.white),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            BuildTextprofile(
              txt: 'Full Name',
              hint: 'Ben Nageh',
              obsure: false,
            ),
            BuildTextprofile(
                txt: 'E-mail', hint: 'ahmdnajkh71@gmail.com', obsure: false),
            BuildTextprofile(txt: 'Password', hint: '********', obsure: true),
            BuildTextprofile(
                txt: 'Location', hint: 'Egypt - Sohag', obsure: false),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.amber,
                  onPressed: () {},
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BuildTextprofile extends StatelessWidget {
  BuildTextprofile({
    super.key,
    required this.txt,
    required this.hint,
    required this.obsure,
  });

  final String txt;
  final String hint;
  final bool obsure;
  bool showpassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: obsure ? showpassword = false : showpassword = true,
        decoration: InputDecoration(
          suffixIcon: obsure
              ? IconButton(
                  onPressed: () {
                    StepState() {
                      showpassword != showpassword;
                    }
                  },
                  icon: Icon(Icons.visibility))
              : null,
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: txt,
          labelStyle: TextStyle(
            color: Color(0xff9B4EC4),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
