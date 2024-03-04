import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// テキストフィールドを表示するダイアログ
class TextFieldDialog extends HookWidget {
  const TextFieldDialog({
    super.key,
    required this.onSubmitted,
    required this.defaultText,
    required this.title,
    required this.button,
    this.autofillHints,
    this.label,
    this.obscureText = false,
  });

  /// ダイアログを表示する
  static void show(
    BuildContext context, {
    required Future<String?> Function(String) onSubmitted,
    required String defaultText,
    required Widget title,
    required Widget button,
    Iterable<String>? autofillHints,
    Widget? label,
    bool obscureText = false,
  }) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return TextFieldDialog(
          onSubmitted: onSubmitted,
          defaultText: defaultText,
          title: title,
          button: button,
          autofillHints: autofillHints,
          label: label,
          obscureText: obscureText,
        );
      },
    );
  }

  final Future<String?> Function(String) onSubmitted;
  final String defaultText;
  final Widget title;
  final Widget button;
  final Iterable<String>? autofillHints;
  final Widget? label;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: defaultText);
    final focusNode = useFocusNode();
    final errorMessage = useState<String?>(null);

    useEffect(
      () {
        void callback() {
          if (focusNode.hasFocus) {
            controller.selection = TextSelection(baseOffset: 0, extentOffset: controller.text.length);
          }
        }

        focusNode.addListener(callback);
        return () => focusNode.removeListener(callback);
      },
      const [],
    );

    return AlertDialog(
      title: title,
      content: TextField(
        autofillHints: autofillHints,
        focusNode: focusNode,
        autofocus: true,
        controller: controller,
        obscureText: obscureText,
        onSubmitted: (text) async {
          errorMessage.value = await onSubmitted(text);
        },
        decoration: InputDecoration(
          errorText: errorMessage.value,
          label: label,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () async {
            errorMessage.value = await onSubmitted(controller.text);
          },
          child: button,
        ),
      ],
    );
  }
}
