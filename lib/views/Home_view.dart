import 'package:flutter/material.dart';
import 'package:newwws_proj/models/contmodel.dart';
import 'package:newwws_proj/services/drawer.dart';
import 'package:newwws_proj/views/BottomBar.dart';
import 'package:newwws_proj/views/Newlistview_builder.dart';
import 'package:newwws_proj/views/Upperlist.dart';

class Home_newss extends StatelessWidget {
  const Home_newss({super.key});

  final List<containt1> contain = const [
    containt1(name: 'SPORTS', image: 'assets/sports.avif'),
    containt1(name: 'Business', image: 'assets/business.avif'),
    containt1(name: 'Health', image: 'assets/health.avif'),
    containt1(name: 'Science', image: 'assets/science.avif'),
    containt1(name: 'Technology', image: 'assets/technology.jpeg'),
    containt1(name: 'General', image: 'assets/general.avif'),
    containt1(name: 'Entertainment', image: 'assets/entertaiment.avif'),
  ];

  static String id = 'Ben_Nageh';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Drawer_build(),
      ),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: RichText(
            text: const TextSpan(
              children: <InlineSpan>[
                TextSpan(
                    text: 'Daily',
                    style: TextStyle(
                        color: Color(0xff9B4EC4),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'News',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          )),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Upperlistwiew(contain: contain)),
          const Newslistview_builder(
            Catogry: 'general',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: const Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const HomeBottomBar(),
      extendBody: true,
    );
  }
}


















// title: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       'News',
          //       style: TextStyle(
          //         color: Colors.black,
          //       ),
          //     ),
          //     Text(
          //       'Cloud',
          //       style: TextStyle(
          //         color: Colors.orange,
          //       ),
          //     )
          //   ],
          // ),













   // body: CustomScrollView(  // here i want to scroll everyone Separately
      //    slivers: [
      //     SliverToBoxAdapter(
      //      child: Upperlistwiew(contain: contain)
      //     ),
      //     const SliverToBoxAdapter(
      //       child: Padding(
      //         padding: EdgeInsets.all(10),
      //         child: Newlistview(),
      //       ),
      //     )
      //    ],
      // ),

      // body: Column(     // here i want to scroll everyone Separately
      //   children: [
      //     Upperlistwiew(contain: contain),
      //     const Expanded(
      //       child: Padding(
      //         padding: EdgeInsets.all(10),
      //         child: Newlistview(),
      //       ),
      //     ),
      //   ],
      // ),