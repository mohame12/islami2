import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/quran_tap/views/sura_details.dart';
import 'package:islami2/features/presentation/home_screen/view/home/taps/quran_tap/views/sura_model.dart';

class QuranTap extends StatelessWidget {
  QuranTap({super.key});
  List<String>suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  List<String> ayaNumber = [
    '7',
    '286',
    '200',
    '176',
    '120',
    '165',
    '206',
    '75',
    '129',
    '109',
    '123',
    '111',
    '43',
    '52',
    '99',
    '128',
    '111',
    '110',
    '98',
    '135',
    '112',
    '78',
    '118',
    '64',
    '77',
    '227',
    '93',
    '88',
    '69',
    '60',
    '34',
    '30',
    '73',
    '54',
    '45',
    '83',
    '182',
    '88',
    '75',
    '85',
    '54',
    '53',
    '89',
    '59',
    '37',
    '35',
    '38',
    '29',
    '18',
    '45',
    '60',
    '49',
    '62',
    '55',
    '78',
    '96',
    '29',
    '22',
    '24',
    '13',
    '14',
    '11',
    '11',
    '18',
    '12',
    '12',
    '30',
    '52',
    '52',
    '44',
    '28',
    '28',
    '20',
    '56',
    '40',
    '31',
    '50',
    '40',
    '46',
    '42',
    '29',
    '19',
    '36',
    '25',
    '22',
    '17',
    '19',
    '26',
    '30',
    '20',
    '15',
    '21',
    '11',
    '8',
    '8',
    '19',
    '5',
    '8',
    '8',
    '11',
    '11',
    '8',
    '3',
    '9',
    '5',
    '4',
    '7',
    '3',
    '6',
    '3',
    '5',
    '4',
    '5',
    '6',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/qur2an_screen_logo.png',
            height: 227,
          ),
          const Divider(
            thickness: 3,
            color: defcolor,
          ),
          Container(
            child: Table(
              //border: TableBorder.all(color: Color(0xffB7935F),),
              children: [
                TableRow(children: [
                  Text(
                      'عدد الايات',
                      textAlign: TextAlign.center,
                      style:Theme.of(context).textTheme.headlineLarge
                  ),
                  Text(
                    'اسم السوره',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ]),
              ],
            ),
          ),
          const Divider(
            thickness: 3,
            color: defcolor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 17.5),
              child: ListView.separated(
                itemBuilder: (context,index){

                  return Row(
                    children: [
                      const Spacer(),
                      Text(ayaNumber[index],style:Theme.of(context).textTheme.bodyMedium),
                      const Spacer(flex: 2,),
                      InkWell(
                        onTap:(){
                          Navigator.pushNamed(context, SuraDetails.id,
                              arguments: SuraModel(suraName[index],index));
                        },
                        child: Text(suraName[index],
                            style:Theme.of(context).textTheme.bodyMedium),
                      ),
                      const Spacer(),
                    ],
                  );
                }, itemCount: suraName.length, separatorBuilder: (BuildContext context, int index) {return const SizedBox(height: 20,); },),
            ),
          )
        ]);
  }
}