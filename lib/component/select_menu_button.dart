import 'package:flutter/material.dart';

/// メニューを選択するためのボタン
/// いい感じの位置にメニューを表示する
class SelectMenuButton extends StatelessWidget {
  const SelectMenuButton({
    super.key,
    required this.items,
  });

  /// メニューの項目
  final List<PopupMenuEntry<String>> items;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Icon(Icons.sort),
      ),
      onTapDown: (details) {
        final position = details.globalPosition;
        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(position.dx, position.dy, 0, 0),
          items: items,
        );
      },
    );
  }
}
