import 'package:flutter/material.dart';
import 'package:speak_with_you/src/config/app_router.dart';
import 'package:speak_with_you/src/presentation/ui/detail_screen.dart';
import 'package:speak_with_you/src/presentation/widget/part_card_wg.dart';
import 'package:speak_with_you/src/utils/app_colors.dart';

import '../../config/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.clTransparent,
        automaticallyImplyLeading: false,
        title: const Text(
          "Talk to you",
          style: AppStyle.appBarTitleST,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PartCardWg(
                    title: "Part one",
                    onTab: () {
                      context.onPush(const DetailScreen(partID: 1,));
                    },
                  ),
                  PartCardWg(
                    title: "Part two",
                    onTab: () {
                      context.onPush(const DetailScreen(partID: 2,));
                    },
                  ),
                  PartCardWg(
                    title: "Part three",
                    onTab: () {
                      context.onPush(const DetailScreen(partID: 3,));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
