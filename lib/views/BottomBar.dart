import 'package:flutter/material.dart';
import 'package:newwws_proj/services/bottomdownpar.dart';
import 'package:newwws_proj/views/Home_view.dart';
import 'package:newwws_proj/views/ProfileScreen.dart';
import 'package:newwws_proj/views/SearchScreen.dart';
import 'package:newwws_proj/views/SettingsScreen.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                bottomdownpar(
                  txt: 'Home',
                  icon: Icon(Icons.home, color: Color(0xffBB3EED)),
                  wid: Home_newss(),
                ),
                bottomdownpar(
                  txt: 'profile',
                  icon: Icon(Icons.person, color: Color(0xffBB3EED)),
                  wid: Profile_Screen(),
                )
              ],
            ),
            Spacer(),
            Row(
              children: [
                bottomdownpar(
                  txt: 'Search',
                  icon: Icon(
                    Icons.search,
                    color: Color(0xffBB3EED),
                  ),
                  
                ),
                bottomdownpar(
                  txt: 'ٍSettings',
                  icon: Icon(
                    Icons.settings,
                    color: Color(0xffBB3EED),
                  ),
                  wid: SettingScreen(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
