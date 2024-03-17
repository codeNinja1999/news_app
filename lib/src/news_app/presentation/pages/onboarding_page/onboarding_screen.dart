import 'package:flutter/material.dart';
import 'package:news_app/core/firebase/firebase_config.dart';
import 'package:news_app/src/news_app/presentation/widgets/onboard_widgets/getstarted_button_widget.dart';
import 'package:news_app/src/news_app/presentation/widgets/onboard_widgets/onboard_pages_widgets.dart';
import 'package:news_app/src/news_app/presentation/widgets/onboard_widgets/page_indicator_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  OnBoardPageWidgets pages = OnBoardPageWidgets();
  final _controller = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    FirebaseConfiguration.getFcmToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) =>
                    setState(() => isLastPage = index == 2),
                children: [
                  pages.buildPages('assets/images/image_1.jpg'),
                  pages.buildPages('assets/images/image_3.jpg'),
                  pages.buildPages('assets/images/image_4.jpg'),
                ],
              ),
            ),
            (isLastPage)
                ? const GetStartedButtonWidget()
                : PageIndicatorWidget(pageController: _controller),
          ],
        ),
      ),
    );
  }
}
