import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/view/home_view.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    initialRoute: HomeView.id,
    routes: {
      HomeView.id:(context)=>HomeView(),
    },
  );
  }
}
