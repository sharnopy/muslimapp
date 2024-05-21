import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_model.dart';

import 'my_theme_data.dart';

class HadethContent extends StatelessWidget {
  const HadethContent({super.key});
static const String routeName="HadethContent";
  @override

  Widget build(BuildContext context) {
    var aeges= ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              aeges.title,
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
                    "${aeges.content[index]})",
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: aeges.content.length,
            ),
          )),
    );
  }
}
