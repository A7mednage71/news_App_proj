import 'package:flutter/material.dart';
import 'package:newwws_proj/models/contmodel.dart';
import 'package:newwws_proj/views/cont.dart';

class Upperlistwiew extends StatelessWidget {
  const Upperlistwiew({
    super.key,
    required this.contain,
  });

  final List<containt1> contain;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        itemCount: contain.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return cont(
            num: contain[index],
          );
        },
      ),
    );
  }
}
