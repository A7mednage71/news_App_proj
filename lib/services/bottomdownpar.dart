import 'package:flutter/material.dart';
import 'package:newwws_proj/views/SearchScreen.dart';

class bottomdownpar extends StatelessWidget {
  const bottomdownpar(
      {super.key, required this.txt, required this.icon, this.wid});

  final String txt;
  final Icon icon;
  final Widget? wid;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {
                if (wid == null) {
                  showSearch(context: context, delegate: Searchdata());
                } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext) {
                        return wid!;
                      },
                    ),
                  );
                }
              },
              icon: icon),
          Text(txt),
        ],
      ),
    );
  }
}
