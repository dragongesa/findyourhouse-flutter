import 'package:findyourhouse/controller.dart';
import 'package:findyourhouse/screen/tabviewitems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GetBuilder<Controller>(
              init: Controller(),
              builder: (controller) => AnimatedContainer(
                height: 56,
                duration: const Duration(milliseconds: 100),
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.green,
                  title: Text("Find Your House"),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.location_pin),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            GetBuilder<Controller>(
              builder: (controller) => ClipRRect(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  height: controller.showAppBar ? 60.0 : 0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Form(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(fontSize: 16, color: Colors.white),
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              prefixIcon: ClipRRect(
                                child: Icon(
                                  CupertinoIcons.search,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.black.withOpacity(.1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          child: ClipRRect(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black.withOpacity(.1),
                              ),
                              width: 60 - 20.0,
                              height: 60 - 20.0,
                              child: Icon(
                                CupertinoIcons.wrench_fill,
                                color: Colors.white,
                                size: 21,
                              ),
                            ),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              color: Colors.white,
              child: Theme(
                data: ThemeData(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                child: TabBar(
                  enableFeedback: false,
                  controller: controller.tabController,
                  unselectedLabelColor: Colors.black.withOpacity(.5),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.all(0),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  tabs: [
                    TabMantap(
                      text: "Murah",
                    ),
                    TabMantap(
                      text: "Mewah",
                    ),
                    TabMantap(
                      text: "Sederhana",
                    ),
                    TabMantap(
                      text: "Gubug",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: controller.tabController,
              children: [
                TabViewItem(),
                TabViewItem(),
                TabViewItem(),
                TabViewItem(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class TabMantap extends StatelessWidget {
  final String text;

  const TabMantap({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Text(text),
        ),
      ),
    );
  }
}
