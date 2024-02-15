import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/home_app_controller.dart';
import 'package:news_app/utile/colors.dart';
import 'package:news_app/views/category_news.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: GetBuilder(
        init: HomeController(),
        builder: (controller) => Column(
          children: [
            UserAccountsDrawerHeader(
              arrowColor:
                  controller.isDarkMode ? ColorsApp.white : ColorsApp.black,
              decoration: const BoxDecoration(),
              accountName: Text(
                "Mohamed Ghaly",
                style: TextStyle(
                  color:
                      controller.isDarkMode ? ColorsApp.white : ColorsApp.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "MohamedGhaly@gmail.com",
                style: TextStyle(
                  color:
                      controller.isDarkMode ? ColorsApp.white : ColorsApp.black,
                ),
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/ph.jpg"),
              ),
              onDetailsPressed: () {},
            ),
            listTileItem(
              title: "Profile",
              leading: Icons.person,
            ),
            listTileItem(
              title: "Search",
              leading: Icons.search,
            ),
            listTileItem(
              title: "Notifications",
              leading: Icons.notifications,
            ),
            ExpansionTile(
                leading: Icon(
                  Icons.newspaper_outlined,
                  color:
                      controller.isDarkMode ? ColorsApp.white : ColorsApp.black,
                ),
                iconColor:
                    controller.isDarkMode ? ColorsApp.white : ColorsApp.black,
                textColor:
                    controller.isDarkMode ? ColorsApp.white : ColorsApp.black,
                title: Text(
                  "News",
                  style: TextStyle(
                    color: controller.isDarkMode
                        ? ColorsApp.white
                        : ColorsApp.black,
                  ),
                ),
                children: [
                  listTileItem(
                    title: "Sports",
                    leading: Icons.sports,
                    onTap: () => Get.to(() => const CategoryNews(
                          category: "sports",
                          icon: Icons.sports,
                        )),
                  ),
                  listTileItem(
                    title: "Health",
                    leading: Icons.health_and_safety,
                    onTap: () => Get.to(() => const CategoryNews(
                          category: "health",
                          icon: Icons.health_and_safety,
                        )),
                  ),
                  listTileItem(
                    title: "Business",
                    leading: Icons.business,
                    onTap: () => Get.to(() => const CategoryNews(
                          category: "business",
                          icon: Icons.business,
                        )),
                  ),
                  listTileItem(
                    title: "Science",
                    leading: Icons.science,
                    onTap: () => Get.to(() => const CategoryNews(
                          category: "science",
                          icon: Icons.science,
                        )),
                  ),
                  listTileItem(
                    title: "Gaming",
                    leading: Icons.games_outlined,
                    onTap: () => Get.to(() => const CategoryNews(
                          category: "technology",
                          icon: Icons.games_outlined,
                        )),
                  ),
                ]),
            Expanded(
              child: ExpansionTile(
                  leading: Icon(
                    Icons.settings,
                    color: controller.isDarkMode
                        ? ColorsApp.white
                        : ColorsApp.black,
                  ),
                  iconColor:
                      controller.isDarkMode ? ColorsApp.white : ColorsApp.black,
                  textColor:
                      controller.isDarkMode ? ColorsApp.white : ColorsApp.black,
                  title: Text(
                    "Settings",
                    style: TextStyle(
                      color: controller.isDarkMode
                          ? ColorsApp.white
                          : ColorsApp.black,
                    ),
                  ),
                  children: [
                    listTileItem(
                      title: "Language",
                      leading: Icons.language,
                    ),
                    listTileItem(
                      title: "About",
                      leading: Icons.info,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  listTileItem({
    required String title,
    required IconData leading,
    Function()? onTap,
  }) {
    return GetBuilder(
        init: HomeController(),
        builder: (controller) => ListTile(
            onTap: onTap,
            title: Text(
              title,
              style: TextStyle(
                color:
                    controller.isDarkMode ? ColorsApp.white : ColorsApp.black,
              ),
            ),
            leading: Icon(
              leading,
              color: controller.isDarkMode ? ColorsApp.white : ColorsApp.black,
            )));
  }
}
