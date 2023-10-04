
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newwws_proj/views/Home_view.dart';
import 'package:newwws_proj/views/Welcomsec.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
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
        padding: EdgeInsets.only(left: 15, top: 15, right: 15),
        child: ListView(
          children: [
            Text(
              'Settings',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            RowSettings(
              text: 'Account',
              icon: Icon(
                Icons.person_2_outlined,
                color: Colors.orange,
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(
              height: 20,
            ),
            Elemrntaccount(
              txt: 'Change Password',
              ic: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ),
            ),
            Elemrntaccount(
              txt: 'Content Settings',
              ic: Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ),
            Elemrntaccount(
                txt: 'Social',
                ic: Icon(Icons.arrow_forward_ios, color: Colors.grey)),
            Elemrntaccount(
                txt: 'Language',
                ic: Icon(Icons.arrow_forward_ios, color: Colors.grey)),
            Elemrntaccount(
                txt: 'Privacy and Security',
                ic: Icon(Icons.arrow_forward_ios, color: Colors.grey)),
            SizedBox(
              height: 20,
            ),
            RowSettings(
              text: 'Notifications',
              icon: Icon(
                Icons.notification_add,
                color: Colors.orange,
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            RowNotifications(
              tx: 'New For You',
              state: true,
            ),
            RowNotifications(
              tx: 'Account activity',
              state: false,
            ),
            RowNotifications(
              tx: 'Opportunity',
              state: true,
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: Colors.orange),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext) {
                        return Welcomsec();
                      },
                    ),
                  );
                },
                child: Text(
                  'SIGN OUT',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RowNotifications extends StatelessWidget {
  const RowNotifications({
    super.key,
    required this.tx,
    required this.state,
  });
  final String tx;
  final bool state;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          tx,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        Spacer(),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            value: state,
            onChanged: (value) {},
          ),
        )
      ],
    );
  }
}

class RowSettings extends StatelessWidget {
  const RowSettings({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

class Elemrntaccount extends StatelessWidget {
  const Elemrntaccount({
    super.key,
    required this.txt,
    required this.ic,
  });

  final String txt;
  final Icon ic;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          txt,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        Spacer(),
        IconButton(onPressed: () {}, icon: ic)
      ],
    );
  }
}
