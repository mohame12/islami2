import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/hadeth_model.dart';
import '../views/hadeth_view.dart';

class HadethProvider extends ChangeNotifier{


  List<String>heads=[];
  List<String>body=[];
  Future<void> gethadeth({required int indx}) async {
    final val = await rootBundle.loadString('assets/hadeth/h${indx + 1}.txt');
    body = val.split('\n');
    notifyListeners();
  }


  Future<void>navigator_to_view({required int index,required BuildContext context})
  async {
   await gethadeth(indx:index );
    Navigator.pushNamed(context, HadethView.id,arguments: HadethModel(head:body[0], boby: body  ));
  }
}