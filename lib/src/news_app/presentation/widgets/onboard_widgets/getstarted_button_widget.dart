// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:news_app/core/setting/setting_preferences.dart';
import 'package:news_app/src/news_app/presentation/pages/home_page/home_page.dart';

class GetStartedButtonWidget extends StatelessWidget {
  const GetStartedButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, 0.9),
      child: TextButton(
        onPressed: () {
          SettingPreferences.setHomeKey(true);

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: Text(
          'Get Started',
          style: TextStyle(fontSize: 20, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
