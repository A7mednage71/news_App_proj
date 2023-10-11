import 'package:flutter/material.dart';
import 'package:newwws_proj/views/Home_view.dart';


class Searchdata extends SearchDelegate {
  List names = ['Ahmed', 'Nageh', 'Mohamed', 'salama', 'diaa', 'Soso'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(
        Icons.arrow_back,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('${query}');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Search Content

    List filterlist =
        names.where((element) => element.contains(query)).toList();

    return ListView.builder(
      itemCount: query == "" ? names.length : filterlist.length,
      itemBuilder: (BuildContext, index) {
        return InkWell(
          onTap: () {
            query = query == "" ? names[index] : filterlist[index];
            showResults(context);
          },
          child: Container(
            child: query == ""
                ? Text(
                    '${names[index]}',
                    style: TextStyle(fontSize: 18),
                  )
                : Text(
                    '${filterlist[index]}',
                    style: TextStyle(fontSize: 18),
                  ),
            padding: EdgeInsets.all(10),
          ),
        );
      },
    );
  }
}
