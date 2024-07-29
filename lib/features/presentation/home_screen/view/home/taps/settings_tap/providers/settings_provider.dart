
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/core/styles/body_style.dart';

class SettingsProvider extends ChangeNotifier
{

  bool isdark=false;

  changeToLightTheme()
  {
    isdark=false;
    notifyListeners();
  }

  changeToDarkTheme()
  {
    isdark=true;
    notifyListeners();
  }

  themeNavPressed({required BuildContext context})
  {
    showModalBottomSheet(shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20),topEnd: Radius.circular(20))),context: context, builder: (context) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        GestureDetector(
          onTap: (){
            changeToLightTheme();
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Light',style:AppTextStyles.bodyText2.copyWith(color: defcolor)),
                Icon(Icons.check,color: defcolor,)

              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            changeToDarkTheme();
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark',style:AppTextStyles.bodyText2,),
                Icon(Icons.check,)

              ],
            ),
          ),
        ),

      ],),
    )
    );
  }


  LanguageNavPressed({required BuildContext context})
  {
    showModalBottomSheet(shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20),topEnd: Radius.circular(20))),context: context, builder: (context) =>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Arabic',style:AppTextStyles.bodyText2.copyWith(color: defcolor)),
                      Icon(Icons.check,color: defcolor,)

                    ],
                  ),
                ),
              ),
              GestureDetector(
                  onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('English',style:AppTextStyles.bodyText2,),
                      Icon(Icons.check,)

                    ],
                  ),
                ),
              ),

            ],),
        )
    );
  }

}