import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../ahadeth_details.dart';

class HatehTab extends StatefulWidget {
  @override
  State<HatehTab> createState() => _HatehTabState();
}

class _HatehTabState extends State<HatehTab> {
  // const HatehTab({super.key});
List<HadethModel>allAhadeth=[];

  @override
  Widget build(BuildContext context) {
    loadaHadeth();
    return Center(
      child: Column(
        children: [Image(image: AssetImage("assets/images/hadeth_logo.png")),
        Divider(
          thickness: 3,
          color: MyThemeData.primary,
        ),
          Text(AppLocalizations.of(context)!.ahadeth),
          Divider(
          thickness: 3,

          color: MyThemeData.primary,
        ),
Expanded(
  child:   ListView.separated(itemBuilder: (context, index) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context,HadethContent.routeName,arguments:allAhadeth[index] );
          
        },
        
        
        child: Text(allAhadeth[index].title,textAlign: TextAlign.center,));

  }, separatorBuilder: (context, index) => Divider(
    thickness: 3,
    endIndent: 40,
    indent: 40,
    color: MyThemeData.primary,
  ), itemCount: allAhadeth.length),
),

        ],


      ),
    );
  }

 loadaHadeth(){
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String>ahadethList=ahadeth.split("#");
   for(int i=0;i<ahadethList.length;i++){
     String hadethOne=ahadethList[i];
     List<String>hadethOneLine=hadethOne.trim().split("\n");
     String title=hadethOneLine[0];
     hadethOneLine.removeAt(0);
     List<String>contant=hadethOneLine;
     HadethModel hadethModel=HadethModel(title, contant);
   allAhadeth.add(hadethModel);
   }
   setState(() {

   });
    });
 }
}
