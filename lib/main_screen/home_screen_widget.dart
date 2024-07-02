import 'package:flutter/material.dart';
import 'package:nit_testovoe/main_screen/widgets/home_screen_button_widget.dart';
import 'package:nit_testovoe/main_screen/widgets/numbers_text_widget.dart';
import 'package:provider/provider.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({
    super.key,
  });

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  final numbers = <int>[];

  @override
  Widget build(BuildContext context) {
    return Provider<List<int>>(
      create: (context) => numbers,
      child: Scaffold(
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HomeScreenButtonWidget(),
              const SizedBox(height: 16),
              const HistoryTextWidget(title: 'История'),
              const SizedBox(height: 10),
              NumbersTextWidget(numbers: numbers),
            ],
          ),
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
