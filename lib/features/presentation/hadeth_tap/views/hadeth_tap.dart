import 'package:flutter/material.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/core/styles/body_style.dart';
import 'package:islami2/features/presentation/hadeth_tap/providers/hadeth_provider.dart';
import 'package:provider/provider.dart';
import '../../../../core/widgets/hadeth_tap_item.dart';

class HadethTap extends StatelessWidget {
  const HadethTap({super.key});

  static const String id = 'HadethTap';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<HadethProvider>(
        builder: (context, provider, child) {
          return Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                const Image(image: AssetImage('assets/images/hadeth_logo.png')),
                const Divider(thickness: 3, color: defcolor),
                const Text('الأحاديث', style: AppTextStyles.heading1),
                const Divider(color: defcolor, thickness: 3),
                Expanded(
                  child: ListView.builder(
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
            ),
          );
        },
      ),
    );
  }
}
