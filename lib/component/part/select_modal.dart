import 'package:flutter/material.dart';

class SelectModalTile extends StatelessWidget {
  const SelectModalTile({
    super.key,
    required this.items,
  });

  final List<Widget> items;

  static void show(
    BuildContext context, {
    required List<Widget> items,
  }) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SelectModalTile(
          items: items,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) {
        return ListView.builder(
          controller: scrollController,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return items[index];
          },
        );
      },
    );
  }
}
