import 'package:flutter/material.dart';

class SearchFieldBar extends StatelessWidget {
  const SearchFieldBar({
    super.key,
    required this.onSubmitted,
    this.defaultText,
    this.hintText,
  });
  final void Function(String)? onSubmitted;
  final String? defaultText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              controller: TextEditingController()..text = defaultText ?? '',
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                isDense: true,
              ),
              onSubmitted: onSubmitted,
            ),
          ),
        ),
      ),
    );
  }
}
