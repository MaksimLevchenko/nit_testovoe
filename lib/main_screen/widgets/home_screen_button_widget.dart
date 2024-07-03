import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nit_testovoe/main_screen/models/numbers_model.dart';
import 'package:provider/provider.dart';

class HomeScreenButtonWidget extends StatelessWidget {
  const HomeScreenButtonWidget({
    super.key,
    required this.countOfElements,
  });

  final int countOfElements;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Выбрать квадратик'),
      onPressed: () => _showBottomSheet(context),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      clipBehavior: Clip.antiAlias,
      isScrollControlled: true,
      isDismissible: false,
      builder: (_) {
        final numbersModel = Provider.of<NumbersModel>(context, listen: false);
        return ListenableProvider.value(
            value: numbersModel,
            child: BottomSheet(
              countOfElements: countOfElements,
            ));
      },
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    super.key,
    required this.countOfElements,
  });

  final int countOfElements;
  final int heightOfElement = 108;

  double getTheRightHeight(
      {required double screenHeight, required int countOfElements}) {
    final maxHeight = 0.8 * screenHeight;
    final elementsSize = countOfElements * heightOfElement;
    return elementsSize > maxHeight
        ? maxHeight / screenHeight
        : elementsSize / screenHeight;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, screenSize) {
      final rightHeight = getTheRightHeight(
        screenHeight: screenSize.maxHeight,
        countOfElements: countOfElements,
      );
      return DraggableScrollableSheet(
        expand: false,
        maxChildSize: max(rightHeight, 0.3),
        initialChildSize: max(rightHeight / 2, 0.25),
        shouldCloseOnMinExtent: true,
        builder: (context, scrollController) => ListView.builder(
          controller: scrollController,
          shrinkWrap: true,
          itemBuilder: _bottomSheetElement,
          itemCount: countOfElements,
        ),
      );
    });
  }

  void _onTap(BuildContext context, int index) {
    Provider.of<NumbersModel>(context, listen: false).addNumber(index);
    Navigator.of(context).pop();
  }

  Widget? _bottomSheetElement(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () => _onTap(context, index),
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
