import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'numbers_model.freezed.dart';

@freezed
class NumbersModel with _$NumbersModel {
  const NumbersModel._();
  const factory NumbersModel({
    @Default([]) List<int> numbers,
  }) = _NumbersModel;

  bool isEmpty() {
    return numbers.isEmpty;
  }

  bool isNotEmpty() {
    return numbers.isNotEmpty;
  }

  int getLength() {
    return numbers.length;
  }
}

class NumbersModelNotifier extends StateNotifier<NumbersModel> {
  NumbersModelNotifier(super.state);

  void addNumber(int number) {
    final newNumbers = [...state.numbers, number];
    log('Old numbers: ${state.numbers}');
    log('New numbers: $newNumbers');
    state = state.copyWith(numbers: newNumbers);
    return;
  }
}

final numbersModelProvider =
    StateNotifierProvider<NumbersModelNotifier, NumbersModel>(
        (ref) => NumbersModelNotifier(const NumbersModel()));
