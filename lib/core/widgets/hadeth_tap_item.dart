
import 'package:flutter/material.dart';


class HadethTapItem extends StatelessWidget {
  const HadethTapItem({
    super.key, required this.index, required this.onTap,
  });


  final int index;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(
      padding: const EdgeInsetsDirectional.only(top: 20),
      child: GestureDetector(
          onTap:onTap,
          child: Text('الحديث رقم ${index+1}',style: Theme.of(context).textTheme.bodyMedium,)),
    ));
  }
}
