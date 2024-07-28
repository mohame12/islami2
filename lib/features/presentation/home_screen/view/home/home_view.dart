import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami2/features/presentation/home_screen/providers/provider.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});

  static const String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<Provider1>(context);
    return Stack(
      children: [
        Image.asset('assets/images/background.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text('islami', style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            //currentIndex: index,
            onTap:pro.onTap,
              backgroundColor: Color(0xffB7935F),
              type: BottomNavigationBarType.shifting,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              items:pro.navList ),
          body: pro.list_of_body[pro.index],

        ),
      ],

    );
  }

  List<Widget>taps=[

  ];
}
