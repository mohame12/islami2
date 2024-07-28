

import 'package:flutter/material.dart';

class SebhaProvider extends ChangeNotifier
{
  double turns=0;

  sebhaclick()
  {
    turns+=0.01;
    notifyListeners();
  }

  int counter=0;
  List<String> allah=['سبحان الله','الحمدالله','لااله الا الله','الله واكبر'];
  int allalistindex=0;

  counter1()
  {
    if(counter==32)
    {
      allalistindex=(allalistindex+1)%4;
      counter=1;

    }
    else
    {
      counter++;
    }
    notifyListeners();
  }
}