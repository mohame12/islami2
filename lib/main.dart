import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/view/home_view.dart';
import 'package:islami2/features/presentation/sebha_tap/views/sebha_tap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SebhaTap.id,
        routes: {
          HomeView.id: (context) => HomeView(),
          SebhaTap.id: (context) => SebhaTap()
        },
    );
  }
}
