import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newwws_proj/firebase_options.dart';
import 'package:newwws_proj/views/Home_view.dart';
import 'package:newwws_proj/views/Welcomsec.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(newsapp());
}

class newsapp extends StatelessWidget {
  const newsapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Home_newss.id: (context) => Home_newss(),
      },
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
