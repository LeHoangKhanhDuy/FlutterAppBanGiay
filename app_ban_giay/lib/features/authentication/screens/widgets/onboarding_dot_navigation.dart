import 'package:app_ban_giay/features/authentication/controllers/onboarding_controller.dart';
import 'package:app_ban_giay/utils/constants/colors.dart';
import 'package:app_ban_giay/utils/constants/sizes.dart';
import 'package:app_ban_giay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/device/device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDevicesUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController, 
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: dark ? TColors.light: TColors.dark, dotHeight: 6),
      ));
  }
}