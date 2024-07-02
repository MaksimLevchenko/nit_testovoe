import 'package:flutter/material.dart';

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

  _showBottomSheet(BuildContext context) {
    Scaffold.of(context).showBottomSheet((_) {
      return BottomSheet(
          onClosing: _onClosing,
          builder: (_) {
            return const Text('lol');
          });
    });
  }

  Widget? _onClosing() {
    return null;
  }
}
