import 'package:flutter/material.dart';
import 'package:nit_testovoe/main_screen/widgets/home_screen_button_widget.dart';
import 'package:nit_testovoe/main_screen/widgets/numbers_text_widget.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeScreenButtonWidget(),
            SizedBox(height: 16),
            HistoryTextWidget(title: 'История'),
            SizedBox(height: 10),
            NumbersTextWidget(),
          ],
        ),
      ),
    );
  }
}

class HistoryTextWidget extends StatelessWidget {
  const HistoryTextWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return const Text(
      'История',
      style: TextStyle(fontSize: 20),
    );
  }
}
