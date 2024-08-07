import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nit_testovoe/main_screen/models/numbers_model.dart';

class HomeScreenButtonWidget extends StatelessWidget {
  const HomeScreenButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Выбрать квадратик'),
      onPressed: () => _showBottomSheet(context),
    );
  }

  void _showBottomSheet(BuildContext context) {
    final int countOfElements = Random().nextInt(20) + 1;
    showModalBottomSheet(
      context: context,
      clipBehavior: Clip.antiAlias,
      isScrollControlled: true,
      isDismissible: false,
      builder: (_) {
        return HomeScreenButtonSheet(
          countOfElements: countOfElements,
        );
      },
    );
  }
}

class HomeScreenButtonSheet extends ConsumerWidget {
  const HomeScreenButtonSheet({
    super.key,
    required this.countOfElements,
  });

  final int countOfElements;
  final int elementHeight = 100;
  final double paddingHeight = 8;

  double getRightMaxHeight({required double screenHeight}) {
    final maxHeight = 0.8 * screenHeight;
    final elementsSize =
        countOfElements * (elementHeight + paddingHeight) - paddingHeight;
    return elementsSize > maxHeight
        ? maxHeight / screenHeight
        : elementsSize / screenHeight;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, screenSize) {
      final rightMaxHeight = getRightMaxHeight(
        screenHeight: screenSize.maxHeight,
      );
      return DraggableScrollableSheet(
        expand: false,
        maxChildSize: rightMaxHeight,
        initialChildSize: rightMaxHeight,
        minChildSize: rightMaxHeight / 2,
        shouldCloseOnMinExtent: true,
        builder: (context, scrollController) => ListView.builder(
          controller: scrollController,
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              _bottomSheetElement(context, ref, index),
          itemCount: countOfElements,
        ),
      );
    });
  }

  void _onTap(BuildContext context, WidgetRef ref, int index) {
    ref.read(numbersModelProvider.notifier).addNumber(index);
    Navigator.of(context).pop();
  }

  Widget? _bottomSheetElement(BuildContext context, WidgetRef ref, int index) {
    late final double padding;
    if (index == countOfElements - 1) {
      padding = 0.0;
    } else {
      padding = paddingHeight;
    }
    return Padding(
      padding: EdgeInsets.only(bottom: padding),
      child: GestureDetector(
        onTap: () => _onTap(context, ref, index),
        child: Container(
          height: 100,
          color: Colors.red,
          child: Center(
              child: Text(
            index.toString(),
            style: const TextStyle(
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
