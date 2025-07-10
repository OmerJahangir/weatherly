import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherly_app/res/images/image_assets.dart';
import 'package:weatherly_app/view_model/controllers/home_controller.dart';

import 'small_container.dart';

class ContainerList extends StatelessWidget {
  ContainerList({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => SmallContainer(
              text: '${controller.getCloudOver()}%',
              image: ImageAssets.heavyRain,
            ),
          ),
          Obx(
            () => SmallContainer(
              text: '${controller.getWindSpeed()}km/h',
              image: ImageAssets.wind,
            ),
          ),
          Obx(
            () => SmallContainer(
              text: '${controller.getHumidity()}%',
              image: ImageAssets.sun,
            ),
          ),
        ],
      ),
    );
  }
}
