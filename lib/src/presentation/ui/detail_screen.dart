import 'package:flutter/material.dart';
import 'package:speak_with_you/src/config/app_router.dart';
import 'package:speak_with_you/src/config/app_style.dart';
import 'package:speak_with_you/src/domain/part_models.dart';
import 'package:speak_with_you/src/presentation/ui/test_screen.dart';
import 'package:speak_with_you/src/utils/app_colors.dart';
import 'package:speak_with_you/src/utils/local_data.dart';

class DetailScreen extends StatefulWidget {
  final int partID;
  const DetailScreen({super.key, required this.partID});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}
//https://fir-50a7f-default-rtdb.firebaseio.com/

class _DetailScreenState extends State<DetailScreen> {
  PartModels part = PartModels(
      partName: "s",
      partDesc: "s",
      partShortTimeLine: "s",
      partLongTimeLine: "s");
  @override
  void initState() {
    super.initState();
    partChacked();
  }

  void partChacked() {
    switch (widget.partID) {
      case 1:
        part = LocalData.partOne;
        break;
      case 2:
        part = LocalData.partTwo;
        break;
      case 3:
        part = LocalData.partThree;
        break;
      default:
        part = PartModels(
            partName: "",
            partDesc: "",
            partShortTimeLine: "",
            partLongTimeLine: "");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.clTransparent,
        automaticallyImplyLeading: false,
        leading: IconButton.filled(
          style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.clBlue)),
          onPressed: () {
            context.onBack();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: AppColors.clWhite,
        ),
        title: const Text(
          "Talk to you",
          style: AppStyle.appBarTitleST,
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text(
                part.partName,
                style: AppStyle.partOneST,
              ),
              const SizedBox(height: 30),
              Text(
                part.partDesc,
                style: AppStyle.partTitleST,
              ),
              const SizedBox(height: 20),
              Text(
                part.partShortTimeLine,
                style: AppStyle.partSuggestST,
              ),
              const SizedBox(height: 20),
              Text(
                part.partLongTimeLine,
                style: AppStyle.partSuggestST,
              ),
              const Spacer(),
              Center(
                child: GestureDetector(
                  onTap: () {
                    context.onPush(const TestScreen());
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.clBlack,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.clBlue,
                              offset: Offset(-11, -11),
                              blurRadius: 5,
                              spreadRadius: 5),
                          BoxShadow(
                            color: AppColors.clBlue2,
                            offset: Offset(11, 11),
                            blurRadius: 5,
                            spreadRadius: 5,
                          ),
                          BoxShadow(
                            color: AppColors.clWhite,
                            offset: Offset(-5, 5),
                            blurRadius: 5,
                            spreadRadius: 5,
                          ),
                          BoxShadow(
                            color: AppColors.clWhite,
                            offset: Offset(5, -5),
                            blurRadius: 5,
                            spreadRadius: 5,
                          ),
                        ]),
                    child: const Text(
                      "Start with me",
                      style: AppStyle.startTitleST,
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 5,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
