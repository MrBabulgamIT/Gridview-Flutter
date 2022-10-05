import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/controller/onboarding_controller.dart';

class OnBorading_Page extends StatelessWidget {
  OnBorading_Page({Key? key}) : super(key: key);

  final _controller = OnBardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: _controller.pagecontroller,
          onPageChanged: _controller.selectedPageIndex,
          itemCount: _controller.onboardingPages.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          _controller.onboardingPages[index].iamgeMain,
                          fit: BoxFit.cover,
                          width: Get.width,
                          height: Get.height * 0.4,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        _controller.onboardingPages[index].title,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        _controller.onboardingPages[index].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 5,
                    left: 0,
                    right: 0,
                    child: Row(
                      children: List.generate(
                          _controller.onboardingPages.length,
                          (index) => Obx(() {
                                return Container(
                                  margin: EdgeInsets.all(4),
                                  padding: EdgeInsets.all(4),
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      color:
                                          _controller.selectedPageIndex.value ==
                                                  index
                                              ? Colors.red
                                              : Colors.greenAccent,
                                      shape: BoxShape.circle),
                                );
                              })),
                    ),
                  ),
                  Positioned(
                      bottom: 5,
                      right: 8,
                      child: FloatingActionButton(
                          onPressed: _controller.forwardAction,
                          child: Obx(() {
                            return Text(
                                _controller.isLastPage ? "start" : "Next");
                          })))
                ],
              ),
            );
          }),
    );
  }
}
