import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/providers/provider.dart';
import 'package:islami2/features/presentation/home_screen/view/home/home_view.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/ahadeth_tap/Providers/hadeth_provider.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/ahadeth_tap/views/ahadeth_tap.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/ahadeth_tap/views/hadeth_view.dart';
import 'package:provider/provider.dart';
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
      ChangeNotifierProvider(create: (context) => HadethProvider(),)
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
      routes: {
        HomeView.id:(context)=>HomeView(),
        HadethTap.id:(context)=>HadethTap(),
        HadethView.id:(context)=>HadethView(),
      },
    ),
  );
  }
}
