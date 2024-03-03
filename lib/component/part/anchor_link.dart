import 'package:flutter/material.dart';

/// アンカーリンク
/// 文字は青色
class AnchorLink extends StatelessWidget {
  const AnchorLink({
    super.key,
    required this.text,
    required this.onTap,
    this.style,
  });

  /// テキスト
  final String text;

  /// タップ
  final VoidCallback onTap;

  /// スタイル
  final TextStyle? style;

  /// オーバーライドする色
  static const Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          text,
          style: style?.copyWith(color: color),
        ),
      ),
    );
  }
}
