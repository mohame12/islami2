import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/providers/provider.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings_tap/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeView extends StatelessWidget {
    HomeView({super.key});

  static const String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<Provider1>(context);
    var settingpr=Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:settingpr.isdark?const AssetImage('assets/images/home_dark_background.png') :const AssetImage('assets/images/background.png')
             , fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(AppLocalizations.of(context)!.islami, style: Theme.of(context).textTheme.titleLarge,),

        ),
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: pro.index,
          onTap:pro.onTap,
            items:pro.navList ),
        body: pro.list_of_body[pro.index],

      ),
    );
  }

  List<Widget>taps=[

  ];
}
