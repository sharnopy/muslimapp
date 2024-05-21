import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class LanguageBottom extends StatelessWidget {
  const LanguageBottom({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(

        children: [
         InkWell(
           onTap: () {
             provider.changeLanguage("en");
           },
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("English",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: MyThemeData.primary
               ),),
               Icon(Icons.done,color: MyThemeData.primary,size: 30,),
             ],
           ),
         ),
         SizedBox(
           height: 15,
         ),
         InkWell(
           onTap: () {
             provider.changeLanguage("ar");
           },
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Arabic",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color: Colors.black
               ),),
              SizedBox.shrink(),
             ],
           ),
         ),
        ],
      ),
    );
  }
}
