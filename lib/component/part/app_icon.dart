import 'package:flutter/material.dart';

/// アプリアイコン
/// 背景色のハードコーディングがあるので注意
class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    required this.name,
    required this.size,
  });

  /// ファイルパス
  final String name;

  /// 大きさ, WidthとHeightが同じ
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: switch (Theme.of(context).brightness) {
          Brightness.light => Colors.grey[300],
          Brightness.dark => Colors.grey,
        },
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        name,
        width: size / 2,
        height: size / 2,
      ),
    );
  }
}
