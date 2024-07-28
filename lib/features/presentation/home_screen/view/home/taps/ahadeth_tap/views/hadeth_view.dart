
import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/core/styles/body_style.dart';
import '../models/hadeth_model.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});
  static const id='HadethView';
  @override
  Widget build(BuildContext context) {
    HadethModel model=ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.cover)
      ),
      child: Scaffold(backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('اسلامي',style: AppTextStyles.heading1,),
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
                color: Colors.white.withOpacity(0.79),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 39),
                      child: Text(model.head,style: AppTextStyles.heading1,),
                    ),
                    const Divider(color:defcolor ,thickness: 1,endIndent: 41,indent: 41,),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 31,left: 20,right:20 ),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: model.boby.length-1,
                            itemBuilder: (context, index) => Center(
                              child: Text(model.boby[index+1],style:AppTextStyles.bodyText.copyWith(fontSize: 20),textAlign: TextAlign.center,textDirection: TextDirection.rtl,),
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
