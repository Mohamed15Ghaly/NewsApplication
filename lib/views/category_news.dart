import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryNews extends StatelessWidget {
  const CategoryNews({super.key, required this.category, required this.icon});
  final String category;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(category.toUpperCase()),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            Icon(icon),
            const Gap(10),
          ],
        ),
        body: SafeArea(child: NewsListViewBuilder(category: category)));
  }
}
