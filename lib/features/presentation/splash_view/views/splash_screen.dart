import 'package:flutter/material.dart';
import 'package:islami2/features/presentation/home_screen/view/home/home_view.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings_tap/providers/settings_provider.dart';
import 'package:provider/provider.dart';


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
        () {
      Navigator.pushReplacementNamed(context, HomeView.id);
        }
    );
  }
  @override

  @override
  Widget build(BuildContext context) {
    var settingpro=Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:settingpro.isdark?const AssetImage('assets/images/bg.png') :const AssetImage('assets/images/bg2.png'),fit: BoxFit.cover)
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/logo2.png'))
          ],
        ),
      ),
    );
  }
}
