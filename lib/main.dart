import 'package:flutter/material.dart';
import 'package:islami2/core/themes/mytheme.dart';
import 'package:islami2/features/presentation/home_screen/providers/provider.dart';
import 'package:islami2/features/presentation/home_screen/providers/qoran_provider.dart';
import 'package:islami2/features/presentation/home_screen/view/home/home_view.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/ahadeth_tap/Providers/hadeth_provider.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/ahadeth_tap/views/ahadeth_tap.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/ahadeth_tap/views/hadeth_view.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/quran_tap/views/sura_details.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings_tap/providers/settings_provider.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings_tap/views/settings.dart';
import 'package:islami2/features/presentation/splash_view/views/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Provider1(),),
        ChangeNotifierProvider(create: (context) => HadethProvider(),),
        ChangeNotifierProvider(create: (context) => QoranProvider()),
        ChangeNotifierProvider(create: (context) => SettingsProvider(),)
      ],
      child: Consumer<SettingsProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            theme: provider.isdark?darkTheme:lightTheme,
            debugShowCheckedModeBanner: false,
            initialRoute: SplashScreen.id,
            routes: {
              HomeView.id: (context) => HomeView(),
              HadethTap.id: (context) => HadethTap(),
              HadethView.id: (context) => HadethView(),
              SuraDetails.id: (context) => SuraDetails(),
              SplashScreen.id: (context) => SplashScreen(),
              SettingsTap.id: (context) => SettingsTap(),
            },
          );
        },
      ),
    );
  }
}
