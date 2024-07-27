import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/hadeth_tap/providers/hadeth_provider.dart';
import 'package:islami2/features/presentation/hadeth_tap/views/hadeth_tap.dart';
import 'package:islami2/features/presentation/hadeth_tap/views/hadeth_view.dart';
import 'package:islami2/features/presentation/home_screen/view/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HadethProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HadethTap.id,
        routes: {
          HomeView.id: (context) => const HomeView(),
          HadethTap.id: (context) => const HadethTap(),
          HadethView.id:(context)=>const HadethView(),
        },
      ),
    );
  }
}
