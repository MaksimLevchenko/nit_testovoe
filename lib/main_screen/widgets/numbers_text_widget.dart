import 'package:flutter/material.dart';
import 'package:nit_testovoe/main_screen/models/numbers_model.dart';
import 'package:provider/provider.dart';

class NumbersTextWidget extends StatelessWidget {
  const NumbersTextWidget({
    super.key,
  });

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
    final numbers = Provider.of<NumbersModel>(context).numbers;
    return Text(
      _numbersToString(numbers),
      textAlign: TextAlign.center,
    );
  }
}
