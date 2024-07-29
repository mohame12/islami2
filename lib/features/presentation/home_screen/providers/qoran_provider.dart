import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QoranProvider extends ChangeNotifier
{

  List<String>verses=[];
  loadSuraFile(int index)async {
    String sura=await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>suraLine=sura.split('\n');

    verses=suraLine;
    notifyListeners();
  }
}