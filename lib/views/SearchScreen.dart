import 'package:flutter/material.dart';
import 'package:newwws_proj/views/Home_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: Searchdata());
            },
            icon: Icon(Icons.search),
          )
        ],
      ),

      // appBar: AppBar(
      //   leading: IconButton.filled(
      //     onPressed: () {
      //       Navigator.of(context)
      //           .push(MaterialPageRoute(builder: (BuildContext) {
      //         return Home_newss();
      //       }));
      //     },
      //     icon: Icon(Icons.arrow_back),
      //     color: Colors.black,
      //   ),
      //   backgroundColor: Colors.white,
      //   title: Container(
      //     height: 45,
      //     width: double.infinity,
      //     child: TextField(
      //       decoration: InputDecoration(
      //           enabledBorder: OutlineInputBorder(
      //             borderSide: BorderSide(
      //               color: Colors.orange,
      //               width: 2.0,
      //             ),
      //           ),
      //           focusedBorder: OutlineInputBorder(
      //             borderSide: BorderSide(
      //               color: Colors.orange,
      //               width: 2.0,
      //             ),
      //           ),
      //           prefixIcon: Icon(
      //             Icons.search,
      //             color: Colors.black,
      //           ),
      //           suffixIcon: IconButton(
      //             onPressed: () {},
      //             icon: Icon(
      //               Icons.clear,
      //               color: Colors.black,
      //             ),
      //           ),
      //           hintText: "Search...",
      //           hintStyle: TextStyle(
      //             color: Color(0xff4B48F0),
      //           )
      //           // border: InputBorder.none,
      //           ),
      //     ),
      //   ),
      // ),
    );
  }
}

// class SearchData extends SearchDelegate {
//   List names = ["Ahmed", "Nageh", "Salama", "Diaa", "Hakeem", "Kareem"];

//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             query = "";
//           },
//           icon: Icon(Icons.close))
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           close(context, null);
//         },
//         icon: Icon(Icons.arrow_back));
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Text('${query}');
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List Filters = names.where((element) => element.contains(query)).toList();

//     return ListView.builder(
//       itemCount: query == "" ? names.length : Filters.length,
//       itemBuilder: (BuildContext, index) {
//         return InkWell(
//           onTap: () {
//             query = query == "" ? names[index] : Filters[index];
//           },
//           child: Container(
//             padding: EdgeInsets.all(15),
//             child: query == ""
//                 ? Text(
//                     '${names[index]}',
//                     style: TextStyle(fontSize: 18),
//                   )
//                 : Text(
//                     '${Filters[index]}',
//                     style: TextStyle(fontSize: 18),
//                   ),
//           ),
//         );
//       },
//     );
//   }
// }
















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
