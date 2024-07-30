import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/quran_tap/views/sura_model.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings_tap/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/qoran_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuraDetails extends StatelessWidget {
   SuraDetails({super.key});

  static const String id = 'Sura Details';

  @override
  Widget build(BuildContext context) {

    var model = ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraModel;
    var provider=Provider.of<QoranProvider>(context); 
    var settingpro=Provider.of<SettingsProvider>(context);
    if (provider.verses.isEmpty) {
      provider.loadSuraFile(model.index);
    }
    provider.loadSuraFile(model.index);
    
        return Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
                image:settingpro.isdark?const AssetImage('assets/images/home_dark_background.png'):const AssetImage('assets/images/background.png'),fit: BoxFit.cover),
          ),
          child: Scaffold(

            appBar: AppBar(

              title:Text(AppLocalizations.of(context)!.islami, ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(29),
              child: Card(

                color:settingpro.isdark? const Color(0xff141A2E).withOpacity(0.79):Colors.white.withOpacity(0.79),
                elevation: 2,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    )
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 39),
                      child: Text(model.name, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: settingpro.isdark?const Color(0xffFACC1D):Colors.black)),
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 41,
                      endIndent: 41,
                      color: defcolor,
                    ),
                    Expanded(
                      child: ListView.builder(itemBuilder: (context, index) {
                        return Text('${provider.verses[index]}(${index + 1})',
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            style:Theme.of(context).textTheme.bodyMedium?.copyWith(color: settingpro.isdark?const Color(0xffFACC1D):Colors.black)
                        );
                      }, itemCount: provider.verses.length,),
                    ),
                  ],
                ),
              ),
            ),

          ),
        );


  }
}