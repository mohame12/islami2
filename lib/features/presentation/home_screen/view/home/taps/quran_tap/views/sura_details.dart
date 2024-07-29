import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/quran_tap/views/sura_model.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/qoran_provider.dart';

class SuraDetails extends StatelessWidget {
  const SuraDetails({super.key});

  static const String id = 'Sura Details';

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraModel;

    return Consumer<QoranProvider>(
      builder: (context, provider, child) {
        if (provider.verses.isEmpty) {
          provider.loadSuraFile(model.index);
        }
        provider.loadSuraFile(model.index);
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),fit: BoxFit.cover),
          ),
          child: Scaffold(

            appBar: AppBar(

              title: Text('اسلامي', style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              centerTitle: true,
            ),
            body: Card(
              margin: EdgeInsets.all(12),
              color: Colors.white.withOpacity(0.79),
              elevation: 2,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 39),
                    child: Text(model.name, style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 41,
                    endIndent: 41,
                    color: defcolor,
                  ),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Text('${provider.verses[index]}(${index + 1})',
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style:TextStyle(fontSize: 25)
                      );
                    }, itemCount: provider.verses.length,),
                  ),
                ],
              ),
            ),

          ),
        );
      },
    );
  }
}