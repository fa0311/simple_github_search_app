import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// CustomScrollViewのスクロールイベントをリッスンするためのウィジェット
class CustomScrollListener extends HookWidget {
  const CustomScrollListener({
    super.key,
    required this.slivers,
    this.threshold = 100,
    this.onTopReached,
    this.onEndReached,
  });

  /// スクロールするウィジェット
  final List<Widget> slivers;

  /// スクロールの閾値
  final int threshold;

  /// スクロールが一番上に到達したときのコールバック
  final void Function()? onTopReached;

  /// スクロールが一番下に到達したときのコールバック
  final void Function()? onEndReached;

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    useEffect(
      () {
        void callback() {
          if (controller.position.minScrollExtent + threshold > controller.offset) {
            onTopReached?.call();
          }
          if (controller.position.maxScrollExtent - threshold < controller.offset) {
            onEndReached?.call();
          }
        }

        controller.addListener(callback);
        return () => controller.removeListener(callback);
      },
      [controller],
    );

    return CustomScrollView(
      controller: controller,
      slivers: slivers,
    );
  }
}
