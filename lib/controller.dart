import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Controller extends GetxController with SingleGetTickerProviderMixin {
  final scrollController = ScrollController();
  TabController tabController;
  bool showAppBar = true;
  scrollListener() {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      print("Keatas");
      showAppBar = true;
      update();
    } else {
      print("Kebawah");
      showAppBar = false;
      update();
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  void onInit() {
    scrollController.addListener(scrollListener);
    tabController = TabController(vsync: this, length: 4);
    super.onInit();
  }
}
