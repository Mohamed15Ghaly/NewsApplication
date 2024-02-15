import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/model/artical_model.dart';
import 'package:news_app/utile/theme.dart';


class TheNews extends StatelessWidget {
  const TheNews({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(Icons.arrow_back),
      )),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.sizeOf(context).height / 4,
                  width: MediaQuery.sizeOf(context).width,
                  child: Image.network(articleModel.image!, fit: BoxFit.fill)),
              Text(articleModel.title,
                  style: ThemeApp.lightTheme.textTheme.bodyLarge)
            ],
          ),
        ),
      ),
    );
  }
}
