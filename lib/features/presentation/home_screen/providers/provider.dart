import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/ahadeth.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/quran.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/radio.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/sebha.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings.dart';


class Provider1 extends ChangeNotifier
{
  int index=0;
  List<BottomNavigationBarItem>navList=
  [
    BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_quran.png')), label: '',backgroundColor: Color(0xffB7935F),),
    BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')), label: '',backgroundColor: Color(0xffB7935F),),
    BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')), label: '',backgroundColor: Color(0xffB7935F),),
    BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_radio.png')), label: '',backgroundColor: Color(0xffB7935F),),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
  ];
  List<Widget>list_of_body=[
    QuranTap(),
    AhadethTap(),
    SebhaTap(),
    RadioTap(),
    SettingsTap(),
  ];
  onTap(indx)
  {
    index=indx;
    notifyListeners();
  }
}