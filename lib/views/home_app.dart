// ignore_for_file: must_be_immutable

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/home_app_controller.dart';
import 'package:news_app/utile/strings.dart';
import 'package:news_app/utile/theme.dart';
import 'package:news_app/widgets/default_drawer.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';


class HomeApp extends StatelessWidget {
  const HomeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) => Scaffold(
        key: controller.scaffoldKey,
        drawer: const DefaultDrawer(),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              controller.scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          title: const Text(StringsApp.appTitleName),
          actions: [
            IconButton(
              onPressed: () {
                Get.changeTheme(
                  Get.isDarkMode ? ThemeApp.lightTheme : ThemeApp.darkTheme,
                );
                Get.find<HomeController>().isDarkMode = !Get.isDarkMode;
                controller.update();
              },
              icon: Icon(
                  controller.isDarkMode ? Icons.dark_mode : Icons.wb_sunny),
              // color: Colors.black,
            ),
            IconButton(
              onPressed: () {
                exit(0);
              },
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: const NewsListViewBuilder(category: "general"),
      ),
    );
  }
}
