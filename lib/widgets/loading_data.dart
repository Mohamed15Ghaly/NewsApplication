import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/home_app_controller.dart';
import 'package:news_app/utile/colors.dart';
import 'package:shimmer/shimmer.dart';


class LoadingData extends StatelessWidget {
  const LoadingData({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.separated(
          itemBuilder: (context, inx) => GetBuilder(
                init: HomeController(),
                builder: (controller) => Shimmer.fromColors(
                  baseColor:controller.isDarkMode?ColorsApp.black.withOpacity(.75): Colors.grey.shade300,
                  highlightColor: controller.isDarkMode?ColorsApp.black.withOpacity(.25): Colors.grey.shade100,
                  enabled: true,
                  child: Column(children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height / 4,
                      width: MediaQuery.sizeOf(context).width,
                      color: controller.isDarkMode
                          ? ColorsApp.black
                          : ColorsApp.white,
                    ),
                  ]),
                ),
              ),
          separatorBuilder: (context, inx) => const Gap(5),
          itemCount: 100),
    );
  }
}
