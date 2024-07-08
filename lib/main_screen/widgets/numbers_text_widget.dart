import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nit_testovoe/main_screen/models/numbers_model.dart';

class NumbersTextWidget extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final numbers = ref.watch(numbersModelProvider);
    return Text(
      _numbersToString(numbers.numbers),
      textAlign: TextAlign.center,
    );
  }
}
