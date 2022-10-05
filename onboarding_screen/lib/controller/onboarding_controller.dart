import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/model/onboarding_model.dart';
import 'package:get/utils.dart';
import 'package:onboarding_screen/screen/homepage.dart';

class OnBardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pagecontroller = PageController();
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;

  forwardAction() {
    if (isLastPage) {
      Get.to(HomePage());
    } else
      pagecontroller.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnBoardingModel> onboardingPages = [
    OnBoardingModel("images/index.jpg", "This is First",
        "Hy It's Is onBoarding Screen this is first page in onBoarding Screen"),
    OnBoardingModel("images/index1.jpg", "This is Secound",
        "Hy It's Is onBoarding Screen this is Secound page in onBoarding Screen"),
    OnBoardingModel("images/index2.jpg", "This is Third",
        "Hy It's Is onBoarding Screen Third this is Secound page in onBoarding Screen"),
    OnBoardingModel("images/index3.jpg", "This is Four",
        "Hy It's Is onBoarding Screen Third this is Four page in onBoarding Screen"),
  ];
}
