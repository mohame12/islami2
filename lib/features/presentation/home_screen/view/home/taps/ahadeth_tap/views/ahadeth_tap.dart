import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/core/styles/body_style.dart';

import 'package:provider/provider.dart';

import '../../../../../../../../core/widgets/hadeth_tap_item.dart';
import '../Providers/hadeth_provider.dart';


class HadethTap extends StatelessWidget {
  const HadethTap({super.key});

  static const String id = 'HadethTap';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: Consumer<HadethProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              const Image(image: AssetImage('assets/images/hadeth_logo.png')),
              const Divider(thickness: 3, color: defcolor),
              const Text('الأحاديث', style: AppTextStyles.heading1),
              const Divider(color: defcolor, thickness: 3),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: 50,
                  itemBuilder: (context, index) => HadethTapItem(
                    index: index,
                    onTap: () => provider.navigator_to_view(
                      index: index,
                      context: context,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}