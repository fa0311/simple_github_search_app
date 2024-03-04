import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class TestComponentUtil {
  TestComponentUtil._();

  static Widget setApp(
    Widget widget, {
    bool isDarkMode = false,
    bool isLocalizations = false,
  }) {
    final theme = ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    );

    final localizationsDelegates = isLocalizations
        ? [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ]
        : null;

    return MaterialApp(
      theme: theme,
      localizationsDelegates: localizationsDelegates,
      home: Scaffold(
        body: widget,
      ),
    );
  }

  static Widget setBuilder({
    required Widget Function(BuildContext) builder,
    bool isDarkMode = false,
    bool isLocalizations = false,
  }) {
    return setApp(
      Builder(builder: builder),
      isDarkMode: isDarkMode,
      isLocalizations: isLocalizations,
    );
  }
}
