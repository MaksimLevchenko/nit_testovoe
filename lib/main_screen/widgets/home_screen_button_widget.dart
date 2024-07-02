import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    showBottomSheet(
      context: context,
      builder: (_) {
        return BottomSheet(
          clipBehavior: Clip.antiAlias,
          enableDrag: false,
          onClosing: _onClosing,
          builder: _bottomSheetBuilder,
        );
      },
    );
  }

  Widget _bottomSheetBuilder(BuildContext _) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Container(
            height: 100,
            color: Colors.red,
            child: Center(child: Text(index.toString())),
          ),
        );
      },
      itemCount: 5,
    );
  }

  Widget? _onClosing() {
    return null;
  }
}
