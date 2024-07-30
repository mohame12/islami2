import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:provider/provider.dart';

import '../../settings_tap/providers/settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    var settingpro=Provider.of<SettingsProvider>(context);

    return Column(
      children: [
        const Spacer(),
        Image.asset('assets/images/radio_image.png',height: 222,),
        const Spacer(),
        Text(AppLocalizations.of(context)!.ezaetElqoranElkarem,style:
          Theme.of(context).textTheme.headlineLarge,textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        Row(
          children: [
            const Spacer(),
            IconButton(onPressed: (){}, icon:  Icon(Icons.skip_next,color: settingpro.isdark? darkcolor:defcolor,size: 33,)),
            const Spacer(),
            IconButton(onPressed: (){}, icon:  Icon(Icons.play_arrow,color:settingpro.isdark? darkcolor:defcolor,size: 46,)),
            const Spacer(),
            IconButton(onPressed: (){}, icon:  Icon(Icons.skip_next_sharp,color: settingpro.isdark? darkcolor:defcolor,size: 33,)),
            const Spacer(),

          ],
        ),
        const Spacer(),

      ],
    );
  }
}