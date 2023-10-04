import 'package:flutter/material.dart';
import 'package:newwws_proj/views/AboutScreen.dart';
import 'package:newwws_proj/views/Contactus.dart';
import 'package:newwws_proj/views/Home_view.dart';
import 'package:newwws_proj/views/Welcomsec.dart';

class Drawer_build extends StatelessWidget {
  const Drawer_build({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg'),
          ),
          accountName: Text("Ben Nageh"),
          accountEmail: Text("ahmdnajkh71@gmail.com"),
        ),
        ListTile(
          title: Text('Home page'),
          leading: Icon(Icons.home),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext) {
              return Home_newss();
            }));
          },
        ),
        ListTile(
          title: Text('Contact Us'),
          leading: Icon(Icons.help),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext) {
              return ContactvsHelp();
            }));
          },
        ),
        ListTile(
          title: Text('About'),
          leading: Icon(Icons.help_center),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext) {
              return AboutScreen();
            }));
          },
        ),
        ListTile(
          title: Text('Logout'),
          leading: Icon(Icons.exit_to_app),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext) {
                  return Welcomsec();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
