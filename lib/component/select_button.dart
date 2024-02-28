import 'package:flutter/material.dart';

/// メニューを選択するためのボタン
class SelectMenuButton extends StatelessWidget {
  const SelectMenuButton({
    super.key,
    required this.items,
    required this.onChanged,
  });

  /// メニューの項目
  final List<PopupMenuEntry<String>> items;

  /// 選択されたときのコールバック
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Icon(Icons.sort),
      ),
      onTapDown: (details) async {
        final position = details.globalPosition;
        final selected = await showMenu(
          context: context,
          position: RelativeRect.fromLTRB(position.dx, position.dy, 0, 0),
          items: items,
        );
        if (selected != null) {
          onChanged(selected);
        }
      },
    );
  }
}
