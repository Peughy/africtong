import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/home/views/rapid_action_view.dart';
import 'package:flutter/material.dart';

class RapidActionSection extends StatelessWidget {
  const RapidActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(horizontal: pad, vertical: pad / 2),
      decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(borderBottomNavigationRadius),
              bottomRight: Radius.circular(borderBottomNavigationRadius))),
      child: const Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RapidActionView(icon: Icons.translate),
              RapidActionView(icon: Icons.add),
              RapidActionView(icon: Icons.stacked_bar_chart_rounded),
              RapidActionView(icon: Icons.person),
            ],
          )
        ],
      ),
    );
  }
}
