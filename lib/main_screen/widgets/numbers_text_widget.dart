import 'package:flutter/material.dart';

class NumbersTextWidget extends StatelessWidget {
  const NumbersTextWidget({
    super.key,
    required this.numbers,
  });

  final List<int> numbers;

  String _numbersToString(List<int> numbers) {
    if (numbers.isEmpty) return 'Тут пока пусто';
    if (numbers.length == 1) return numbers.first.toString();
    String result = '';
    for (int index = 0; index < numbers.length; index++) {
      result += numbers[index].toString();
      if (index != numbers.length - 1) {
        result += ', ';
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Text(_numbersToString(numbers));
  }
}
