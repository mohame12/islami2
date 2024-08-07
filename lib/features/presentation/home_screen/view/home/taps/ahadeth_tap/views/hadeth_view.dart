
import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/settings_tap/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import '../models/hadeth_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});
  static const id='HadethView';
  @override
  Widget build(BuildContext context) {
    HadethModel model=ModalRoute.of(context)?.settings.arguments as HadethModel;
    var settingpro=Provider.of<SettingsProvider>(context);
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(image:settingpro.isdark?const AssetImage('assets/images/home_dark_background.png') :const AssetImage('assets/images/background.png'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(

          title:  Text(AppLocalizations.of(context)!.islami),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50,left: 29,right: 29),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.7,
            child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                ),
                color: settingpro.isdark? const Color(0xff141A2E).withOpacity(0.79):Colors.white.withOpacity(0.79),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 39),
                      child: Text(model.head,style:Theme.of(context).textTheme.titleLarge?.copyWith(color: settingpro.isdark?const Color(0xffFACC1D):Colors.black)),
                    ),
                    const Divider(color:defcolor ,thickness: 1,endIndent: 41,indent: 41,),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 31,left: 20,right:20 ),
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: model.boby.length-1,
                            itemBuilder: (context, index) => Center(
                              child: Text(model.boby[index+1],style:Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 20,color: settingpro.isdark?const Color(0xffFACC1D):Colors.black),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),
                            ),
                          ),
                        )

                    )],
                )
            ),
          ),
        ),
      ),
    );
  }
}
