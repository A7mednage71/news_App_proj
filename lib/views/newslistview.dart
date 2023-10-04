import 'package:flutter/material.dart';
import 'package:newwws_proj/models/article.dart';
import 'package:newwws_proj/views/new_col.dart';

class Newlistview extends StatelessWidget {
  const Newlistview({
    super.key, required this.articles,
  });

   final List<AtricalModel>articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return news_coulmn(num: articles[index]);
              },
            ),
          );

    // return ListView.builder(
    //     physics: NeverScrollableScrollPhysics(),
    //     shrinkWrap: true,
    //     itemCount: 10,
    //     itemBuilder: (context, index) {
    //       return const Padding(
    //         padding: EdgeInsets.only(bottom: 20),
    //         child: news_coulmn(),
    //       );
    //     });
  }
}
