import 'package:flutter/material.dart';
import 'package:news_app/model/artical_model.dart';
import 'package:news_app/widgets/news_tile.dart';


class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.articles,
  });
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          itemBuilder: (context, index) =>
              NewsTile(articleModel: articles[index]),
          itemCount: articles.length),
    );
  }
}
