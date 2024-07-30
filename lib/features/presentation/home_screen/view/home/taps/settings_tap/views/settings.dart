import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings_tap/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../../../../core/colors/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                const SizedBox(height: 50,),
                Text(AppLocalizations.of(context)!.themes,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),),
                const SizedBox(height: 30,),
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
                      child: Text(provider.isdark?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light, style: const TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
                const SizedBox(height: 50,),



                Text(AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),),
                const SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    provider.languageNavPressed(context: context);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all( color:provider.isdark? darkcolor:defcolor)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(provider.isArabic?AppLocalizations.of(context)!.arabic:AppLocalizations.of(context)!.english, style: const TextStyle(fontSize: 20),),
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