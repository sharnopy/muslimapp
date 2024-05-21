import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/sura_contant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'ahadeth_details.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(),

      child: MyApp()));
}

class MyApp extends StatelessWidget {

  // const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      locale: Locale(provider.local),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.rouetName,
      routes: {
        HomeScreen.rouetName: (context) => HomeScreen(),
        SuaraDetails.routeName: (context) => SuaraDetails(),
        HadethContent.routeName: (context) => HadethContent(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: ThemeData(),
    );
  }
}
