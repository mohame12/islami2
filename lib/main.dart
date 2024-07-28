import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/providers/provider.dart';
import 'package:islami2/features/presentation/home_screen/view/home/home_view.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/quran_tap/views/sura_deitals.dart';
import 'package:provider/provider.dart';

import 'features/presentation/home_screen/providers/qoran_provider.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Provider1(),),
      ChangeNotifierProvider(create: (context)=>QoranProvider())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
      routes: {
        HomeView.id:(context)=>HomeView(),
        SuraDetails.id:(context)=> SuraDetails(),
      },
    ),
  );
  }
}
