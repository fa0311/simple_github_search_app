import 'package:flutter/material.dart';

/// InkWellを使ったカード
/// Rippleのエフェクトが欲しいときに使う
class InkWellCard extends StatelessWidget {
  const InkWellCard({
    super.key,
    required this.child,
    this.onTap,
    this.color,
  });

  /// カードの中身
  final Widget child;

  /// タップしたときの処理
  final VoidCallback? onTap;

  /// カードの色
  final Color? color;

  /// デフォルトのCardのborderRadiusは8
  static BorderRadius borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: child,
      ),
    );
  }
}
