import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/providers/provider.dart';
import 'package:islami2/features/presentation/home_screen/view/home/home_view.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(ChangeNotifierProvider(
    create: (context)=>Provider1(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Provider1>(context);
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: HomeView.id,
    routes: {
      HomeView.id:(context)=>HomeView(),
    },
  );
  }
}
