import 'package:flutter/material.dart';
import 'package:newwws_proj/views/Newlistview_builder.dart';

class Catogray_View extends StatelessWidget {
  const Catogray_View({super.key, required this.Catogry});

  final String Catogry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Newslistview_builder(
            Catogry: Catogry,
          ),
        ],
      ),
    );
  }
}
