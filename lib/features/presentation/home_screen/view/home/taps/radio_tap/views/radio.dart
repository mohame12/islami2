import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Image.asset('assets/images/radio_image.png',height: 222,),
        Spacer(),
        Text('إذاعة القرآن الكريم',style: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
        Spacer(),
        Row(
          children: [
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,color: Color(0xffB7935F),size: 33,)),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,color: Color(0xffB7935F),size: 46,)),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.skip_next_sharp,color: Color(0xffB7935F),size: 33,)),
            Spacer(),

          ],
        ),
        Spacer(),

      ],
    );
  }
}