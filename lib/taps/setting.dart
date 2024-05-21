

import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';

import '../bottom_sheet/languge_bottom_sheet.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  // const SettingTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("languahe",style: TextStyle(
            fontSize: 20
          ),),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: MyThemeData.primary
                )
              ),
              child: Text("English",style: TextStyle(
                fontSize: 20
              ),),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text("mood",style: TextStyle(
            fontSize: 20
          ),),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showLThemingBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: MyThemeData.primary
                )
              ),
              child: Text("Light",style: TextStyle(
                fontSize: 20
              ),),
            ),
          ),
        ],

      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context,

      builder: (context) {
      return LanguageBottom();
    },
    );
  }

  void showLThemingBottomSheet() {
    showModalBottomSheet(context: context,
      isScrollControlled: true,
      builder: (context) {
      return Container(
        height:MediaQuery.of(context).size.height*0.3,
      );
    },
    );
  }}