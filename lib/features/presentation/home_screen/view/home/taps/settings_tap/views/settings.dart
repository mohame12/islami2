import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings_tap/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../../../../core/colors/colors.dart';


class SettingsTap extends StatelessWidget {
  const SettingsTap({super.key});

  static const String id = 'SettingsTap';

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Text('T H E M E S',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: () {
                    provider.themeNavPressed(context: context);

                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color:  provider.isdark? darkcolor:defcolor)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Light', style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
                SizedBox(height: 50,),



                Text('L A N G U A G E',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    provider.LanguageNavPressed(context: context);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all( color:provider.isdark? darkcolor:defcolor)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Arabic', style: TextStyle(fontSize: 20),),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}