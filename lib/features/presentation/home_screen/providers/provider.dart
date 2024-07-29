import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/ahadeth_tap/views/ahadeth_tap.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/quran_tap/views/quran.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/radio_tap/views/radio.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/sebha_tap/views/sebha_tap.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings_tap/views/settings.dart';


class Provider1 extends ChangeNotifier
{
  int index=0;
  List<BottomNavigationBarItem>navList=
  [
    const BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_quran.png')), label: '',backgroundColor: Color(0xffB7935F),),
    const BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')), label: '',backgroundColor: Color(0xffB7935F),),
    const BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')), label: '',backgroundColor: Color(0xffB7935F),),
    const BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_radio.png')), label: '',backgroundColor: Color(0xffB7935F),),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: '',backgroundColor: Color(0xffB7935F),),
  ];
  List<Widget>list_of_body=[
    QuranTap(),
     const HadethTap(),
    const SebhaTap(),
    const RadioTap(),
    const SettingsTap(),
  ];
  onTap(indx)
  {
    index=indx;
    notifyListeners();
  }
}