import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/taps/quran.dart';
import 'package:islami_app/taps/radio.dart';
import 'package:islami_app/taps/hadeth.dart';
import 'package:islami_app/taps/sebha.dart';
import 'package:islami_app/taps/setting.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static const String rouetName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "radio",
                  backgroundColor: MyThemeData.primary),
              // BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "radio"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                  label: "hatheh",
                  backgroundColor: MyThemeData.primary),

              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "sebha",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "quran",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "setting",
                backgroundColor: MyThemeData.primary,
              )
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    HatehTab(),
    sebhaTab(),
    QuranTab(),
    SettingTab()
  ];
}
