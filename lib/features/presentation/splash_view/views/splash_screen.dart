import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/view/home/home_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String id='SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {

    super.initState();
    Future.delayed(const Duration(seconds: 2),
        (){
      Navigator.pushReplacementNamed(context, HomeView.id);
        }
    );
  }
  @override

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/logo2.png'))
        ],
      ),
    );
  }
}
