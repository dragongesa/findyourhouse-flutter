import 'package:findyourhouse/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabViewItem extends StatelessWidget {
  final Controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        controller: controller.scrollController,
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            // boxShadow: [
            //   BoxShadow(
            //     blurRadius: 1,
            //     offset: Offset(0, 1),
            //     color: Colors.black.withOpacity(.15),
            //   )
            // ],
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // margin: EdgeInsets.symmetric(
          //   horizontal: 20,
          //   vertical: 10,
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Image.network(
                    "https://cdn2.wanderlust.co.uk/media/1028/cropped-shutterstock_497799013.jpg?anchor=center&mode=crop&width=1200&height=0&rnd=131915974290000000",
                    fit: BoxFit.cover,
                    height: 120,
                    width: double.infinity,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hotel kencana dewi",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.king_bed_rounded,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Bed: " + "2")
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.bathtub_rounded,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Bathub: " + "2")
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      "\$200",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
