import 'package:flutter/material.dart';
import 'package:newwws_proj/Webviewpage.dart';
import 'package:newwws_proj/models/news_response.dart';
import 'package:newwws_proj/services/new_service.dart';

class Searchdata extends SearchDelegate {
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
    return FutureBuilder<NewsResponse>(
      future: New_service.searchNews(search: query),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            itemCount: snapshot.data!.articles!.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20,
              );
            },
            itemBuilder: (context, index) {
              var data = snapshot.data!.articles?[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return Web_View(Link: data?.url ?? "");
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            data?.urlToImage ?? "assets/sports.avif",
                            height: 200,
                            fit: BoxFit.fill,
                            width: double.infinity,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        data?.title ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        data?.description ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('oops , There is an error ,try later'));
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.3,
              ),
              Align(
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator()),
            ],
          );
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder<NewsResponse>(
      future: New_service.searchNews(search: query),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            itemCount: snapshot.data!.articles!.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20,
              );
            },
            itemBuilder: (context, index) {
              var data = snapshot.data!.articles?[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return Web_View(Link: data?.url ?? "");
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            data?.urlToImage ?? "assets/sports.avif",
                            height: 200,
                            fit: BoxFit.fill,
                            width: double.infinity,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        data?.title ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        data?.description ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (snapshot.data == null) {
          return Center(child: Text('You have no search yet'));
        } else if (snapshot.hasError) {
          return Center(child: Text('oops , There is an error ,try later'));
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.3,
              ),
              Align(
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator()),
            ],
          );
        }
      },
    );
  }
}
