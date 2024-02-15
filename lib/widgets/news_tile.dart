import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/model/artical_model.dart';
import 'package:news_app/utile/colors.dart';
import 'package:news_app/views/the_news.dart';
import 'package:news_app/utile/theme.dart';


class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() =>  TheNews(
          articleModel: articleModel,
        ));
      },
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height / 4,
        width: MediaQuery.sizeOf(context).width,
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: ColorsApp.black.withOpacity(.5),
            title: Text(
              articleModel.title,
              style: ThemeApp.lightTheme.textTheme.bodyLarge,
              maxLines: 1,
            ),
            subtitle: Text(
              articleModel.subTitle ?? "",
              style: ThemeApp.lightTheme.textTheme.bodyMedium,
              maxLines: 2,
            ),
          ),
          child: Image.network(articleModel.image!, fit: BoxFit.fill),
        ),
      ),
    );
  }
}
