
import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings_tap/providers/settings_provider.dart';

import 'package:provider/provider.dart';

import '../../../../../../../../core/styles/body_style.dart';
import '../providers/sebha_provider.dart';

class SebhaTap extends StatelessWidget {
  const SebhaTap({super.key});

  static const String id = 'SebhaTap';

  @override
  Widget build(BuildContext context) {
    var settingpro=Provider.of<SettingsProvider>(context);
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
                            duration: const Duration(milliseconds: 10),
                            child: GestureDetector(
                                onTap: () {
                                  provider.sebhaclick();
                                  provider.counter1();
                                },
                                child: const Image(image: AssetImage(
                                    'assets/images/body_sebha_logo.png')))),
                        const Positioned(
                            bottom: 209,
                            left: 112,
                            child: Image(image: AssetImage(
                                'assets/images/head_sebha_logo.png'))),

                      ]),
                ),
                const SizedBox(height: 26,),
                Text('عدد التسبيحات', style:Theme.of(context).textTheme.headlineLarge,),
                const SizedBox(height: 26,
                  width: double.infinity,),

                Container(
                  height: 81,
                  width: 70,
                  decoration: BoxDecoration(
                      color:settingpro.isdark? const Color(0xff141A2E):defcolor,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                      child: Text('${provider.counter}', style: Theme.of(context).textTheme.titleLarge,)),
                ),
                const SizedBox(height: 26,),
                Container(
                  height: 52,
                  width: 140,
                  decoration: BoxDecoration(
                      color: settingpro.isdark? darkcolor:defcolor,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                      child: Text(
                        '${provider.allah[provider.allalistindex]}', style: AppTextStyles.body25_meseri,)),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
