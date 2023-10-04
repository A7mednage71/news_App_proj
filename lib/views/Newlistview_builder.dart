import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newwws_proj/models/article.dart';
import 'package:newwws_proj/services/new_service.dart';
import 'package:newwws_proj/views/newslistview.dart';

class Newslistview_builder extends StatefulWidget {
  const Newslistview_builder({super.key, required this.Catogry});

  final String Catogry;

  @override
  State<Newslistview_builder> createState() => _Newslistview_builderState();
}

class _Newslistview_builderState extends State<Newslistview_builder> {
  // List<AtricalModel> articles = [];

  var Future;
  void initState() {
    super.initState();
    Future = New_service(Dio()).getnews(Catorgy: widget.Catogry);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AtricalModel>>(
      future: Future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Newlistview(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('oops , There is an error ,try later'),
          );
        } else {
          return SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                ),
                const CircularProgressIndicator(),
              ],
            ),
          );
        }
      },
    );

    //   return loading
    //       ? SliverToBoxAdapter(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               SizedBox(
    //                 height: MediaQuery.sizeOf(context).height * 0.3,
    //               ),
    //               const CircularProgressIndicator(),
    //             ],
    //           ),
    //         )
    //       : articles.isNotEmpty
    //           ? Newlistview(
    //               articles: articles,
    //             )
    //           : const SliverToBoxAdapter(
    //               child: Text('oops , There is an error ,try later'));
    // }
  }
}
