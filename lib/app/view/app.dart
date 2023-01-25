import 'package:ecommerce_user/index_screen/view/index_screen.dart';
import 'package:ecommerce_user/l10n/l10n.dart';
import 'package:ecommerce_user/login/login.dart';
import 'package:ecommerce_user/signup/view/signup.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Login(),
    );
  }
}
