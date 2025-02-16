import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app/ui/splash/screen/splash_screen.dart';
import 'package:evently_app/ui/start_screen/screen/start_screen.dart';
import 'package:flutter/material.dart';

import 'core/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evently',
      theme: AppTheme.lightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        StartScreen.routeName: (_) => StartScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

