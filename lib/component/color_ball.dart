import 'package:flutter/material.dart';

/// 色の付いた丸
class ColorBall extends StatelessWidget {
  const ColorBall({
    super.key,
    required this.color,
    this.size = 10,
  });

  /// 色
  final Color color;

  /// 大きさ, WidthとHeightが同じ
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
