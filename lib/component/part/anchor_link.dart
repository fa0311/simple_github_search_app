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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          text,
          style: style?.merge(
            const TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
