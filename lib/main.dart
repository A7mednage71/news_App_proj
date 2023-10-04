import 'package:flutter/material.dart';
import 'package:newwws_proj/Webviewpage.dart';
import 'package:newwws_proj/views/Home_view.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:newwws_proj/views/Welcomsec.dart';

void main() {
  runApp(newsapp());
}

class newsapp extends StatelessWidget {
  const newsapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       //home: Home_newss(),
      //home: Login_page(),
      //home: SignUp_page(),
      //home: Welcom_page(),
       home: Welcomsec(),
      // home: SearchScreen(),
      //home: Profile_Screen(),
      //home: SettingScreen(),
      // home: AboutScreen(),
      //home: ContactvsHelp(),

     // home: Web_View()
    );
  }
}
