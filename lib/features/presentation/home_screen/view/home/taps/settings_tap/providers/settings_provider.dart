
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/core/shared_pref/shared_pref.dart';
import 'package:islami2/core/styles/body_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SettingsProvider extends ChangeNotifier
{

  bool isdark=false;
  bool selectLight=true;
  String theme='';
  bool isArabic=true;
  bool selectArbice=true;



  changeToLightTheme()
  {
    isdark=false;
    selectLight=true;
    UserDataFromStorage.setThemeIsDarkMode(isdark);
    notifyListeners();
  }

  changeToDarkTheme()
  {
    isdark=true;
    selectLight=false;
    UserDataFromStorage.setThemeIsDarkMode(isdark);
    notifyListeners();
  }

  lastTheme()
  {
    isdark=UserDataFromStorage.themeIsDarkMode;
    selectLight = !isdark;
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
                Text(AppLocalizations.of(context)!.light,style:isdark?AppTextStyles.body25_meseri.copyWith(color:selectLight?defcolor :Colors.white):AppTextStyles.body25_meseri.copyWith(color:selectLight? defcolor:Colors.black)),
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
                Text(AppLocalizations.of(context)!.dark,style:isdark?AppTextStyles.body25_meseri.copyWith(color:selectLight? Colors.white:defcolor):AppTextStyles.body25_meseri.copyWith(color:selectLight? Colors.black:defcolor)),
                Icon(Icons.check,color:(isdark)?selectLight?Colors.white:defcolor:Colors.black)

              ],
            ),
          ),
        ),

      ],),
    )
    );
  }



  changeToArabic()
  {
   isArabic=true;
   selectArbice=true;
   UserDataFromStorage.setUserLanguage(isArabic);
   notifyListeners();
  }
  changeToEnglish()
  {
    isArabic=false;
    selectArbice=false;
    UserDataFromStorage.setUserLanguage(isArabic);
    notifyListeners();
  }

  lastLanguage()
  {
    isArabic=UserDataFromStorage.userLanguage;
    selectArbice=isArabic;
    notifyListeners();
  }

  languageNavPressed({required BuildContext context})
  {
    showModalBottomSheet(backgroundColor: isdark?Color(0xff141A2E):Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20),topEnd: Radius.circular(20))),context: context, builder: (context) =>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: (){
                  changeToArabic();
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLocalizations.of(context)!.arabic,style:isdark?AppTextStyles.body25_meseri.copyWith(color:selectArbice?defcolor :Colors.white):AppTextStyles.body25_meseri.copyWith(color:selectArbice? defcolor:Colors.black)),
                      Icon(Icons.check,color:(isdark)?Colors.white:selectArbice?defcolor:Colors.black,)

                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  changeToEnglish();
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLocalizations.of(context)!.english,style:isdark?AppTextStyles.body25_meseri.copyWith(color:selectArbice? Colors.white:defcolor):AppTextStyles.body25_meseri.copyWith(color:selectArbice? Colors.black:defcolor)),
                      Icon(Icons.check,color:(isdark)?selectArbice?Colors.white:defcolor:Colors.black)

                    ],
                  ),
                ),
              ),

            ],),
        )
    );
  }

}