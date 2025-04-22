import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/spacing.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/features/on_boarding/presentation/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
 late PageController pageController;

 var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: const OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,

            color: AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        verticalSpacing(20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomButton(onPressed: () {}, text: 'ابدأ الان'),
        ),
        verticalSpacing(34),
      ],
    );
  }
}
