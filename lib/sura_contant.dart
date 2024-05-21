import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/sura_model.dart';

class SuaraDetails extends StatefulWidget {
  static const String routeName = "SuaraDetails";

  @override
  State<SuaraDetails> createState() => _SuaraDetailsState();
}

class _SuaraDetailsState extends State<SuaraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var arges = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(arges.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              arges.names,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Card(
            elevation: 14,
            margin: EdgeInsets.all(18),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: MyThemeData.primary,
                )),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                endIndent: 40,
                indent: 40,
              ),
              itemBuilder: (context, index) {
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    "${verses[index]}(${index + 1})",
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: verses.length,
            ),
          )),
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");

    List<String> lines = sura.split("\n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
