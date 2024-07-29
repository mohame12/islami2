
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/core/styles/body_style.dart';

class SettingsProvider extends ChangeNotifier
{

  bool isdark=false;
  bool selectLight=true;

  changeToLightTheme()
  {
    isdark=false;
    selectLight=true;
    notifyListeners();
  }

  changeToDarkTheme()
  {
    isdark=true;
    selectLight=false;
    notifyListeners();
  }

  themeNavPressed({required BuildContext context})
  {
    showModalBottomSheet(backgroundColor: isdark?Color(0xff141A2E):Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20),topEnd: Radius.circular(20))),context: context, builder: (context) =>
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
                Text('Light',style:isdark?AppTextStyles.body25_meseri.copyWith(color:selectLight?defcolor :Colors.white):AppTextStyles.body25_meseri.copyWith(color:selectLight? defcolor:Colors.black)),
                Icon(Icons.check,color:(isdark)?Colors.white:selectLight?defcolor:Colors.black,)

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
                Text('Dark',style:isdark?AppTextStyles.body25_meseri.copyWith(color:selectLight? Colors.white:defcolor):AppTextStyles.body25_meseri.copyWith(color:selectLight? Colors.black:defcolor)),
                Icon(Icons.check,color:(isdark)?selectLight?Colors.white:defcolor:Colors.black)

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
                      Text('Arabic',style:AppTextStyles.body25_meseri.copyWith(color: defcolor)),
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
                      Text('English',style:AppTextStyles.body25_meseri,),
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