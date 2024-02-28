import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 検索フィールドのバー
class SearchFieldBar extends HookWidget {
  const SearchFieldBar({
    super.key,
    required this.onSubmitted,
    this.defaultText,
    this.hintText,
  });

  /// 検索ボタンを押したときのコールバック
  final void Function(String)? onSubmitted;

  /// デフォルトのテキスト
  final String? defaultText;

  /// ヒントテキスト
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: defaultText);
    return SizedBox(
      height: 40,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[500]?.withOpacity(0.1),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                isDense: true,
              ),
              onSubmitted: (text) {
                controller.clear();
                onSubmitted!(text);
              },
            ),
          ),
        ),
      ),
    );
  }
}
