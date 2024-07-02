import 'package:flutter/material.dart';

class NumbersTextWidget extends StatelessWidget {
  const NumbersTextWidget({
    super.key,
    required this.numbers,
  });

  final List<int> numbers;

  String _numbersToString(List<int> numbers) {
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Text(_numbersToString(numbers));
  }
}
