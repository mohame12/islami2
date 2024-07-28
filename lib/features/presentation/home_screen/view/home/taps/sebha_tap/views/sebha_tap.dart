
import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';

import 'package:provider/provider.dart';

import '../../../../../../../../core/styles/body_style.dart';
import '../providers/sebha_provider.dart';

class SebhaTap extends StatelessWidget {
  const SebhaTap({super.key});

  static const String id = 'SebhaTap';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SebhaProvider(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Consumer<SebhaProvider>(
          builder: (context, provider, child) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        AnimatedRotation(turns: provider.turns,
                            duration: Duration(milliseconds: 10),
                            child: GestureDetector(
                                onTap: () {
                                  provider.sebhaclick();
                                  provider.counter1();
                                },
                                child: Image(image: AssetImage(
                                    'assets/images/body_sebha_logo.png')))),
                        Positioned(
                            bottom: 209,
                            left: 112,
                            child: Image(image: AssetImage(
                                'assets/images/head_sebha_logo.png'))),

                      ]),
                ),
                SizedBox(height: 26,),
                Text('عدد التسبيحات', style: AppTextStyles.bodyText2,),
                SizedBox(height: 26,
                  width: double.infinity,),

                Container(
                  height: 81,
                  width: 70,
                  decoration: BoxDecoration(
                      color: defcolor,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                      child: Text('${provider.counter}', style: AppTextStyles.heading1,)),
                ),
                SizedBox(height: 26,),
                Container(
                  height: 52,
                  width: 140,
                  decoration: BoxDecoration(
                      color: defcolor,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                      child: Text(
                        '${provider.allah[provider.allalistindex]}', style: AppTextStyles.bodyText2,)),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}