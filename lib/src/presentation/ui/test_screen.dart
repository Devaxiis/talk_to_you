
import 'package:audioplayers/audioplayers.dart';
import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';
import 'package:speak_with_you/src/config/app_router.dart';
import 'package:speak_with_you/src/config/app_style.dart';
import 'package:speak_with_you/src/data/data.dart';
import 'package:speak_with_you/src/data/fake_data.dart';
import 'package:speak_with_you/src/domain/test_models.dart';
import 'package:speak_with_you/src/presentation/ui/detail_screen.dart';
import 'package:speak_with_you/src/utils/app_colors.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final fiveDuration = const Duration(seconds: 6);
  final thurtyDuration = const Duration(seconds: 30);
  final data = FakeData.fakeData;
  final db = DBconnect();
  int count = 0;
  int countTest = 5;
  int localtion = 30;
  int localtion2 = 6;
  bool repeader = true;
  bool tester = false;
  late Future _options;
  late AudioPlayer player = AudioPlayer();
  Future<List<TestModels>> getData() async {
    return db.fetchQuestion();
  }

  @override
  void initState() {
    super.initState();
    _options = getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _options as Future<List<TestModels>>,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            final extractedData = snapshot.data as List<TestModels>;
            // extractedData.shuffle();
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                leading: IconButton(onPressed: ()=>context.onBack(), icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Color(0xffffffff),)),
                actions: [
                  Text("$countTest",style: AppStyle.appBarTitleST,),
                  const SizedBox(height: 20,width: 20,),
                  ],
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const SizedBox(height: 20),
                    Text(
                      extractedData[count].options,
                      style: AppStyle.questionST,
                      textAlign: TextAlign.center,
                    ),
                     const SizedBox(height: 30),
                    SizedBox(
                      height: 300,
                      width: 300,
                      child: TimeCircularCountdown(
                        countdownCurrentColor: AppColors.clGreen,
                        countdownRemainingColor: AppColors.clBlue,
                        unit: CountdownUnit.second,
                        countdownTotal: tester ? localtion : localtion2,
                        onUpdated: (unit, remainingTime) {
                          if (remainingTime < 4) {
                            player.play(AssetSource("audios/three.mp3"));
                          }
                        },
                        repeat: repeader,
                        onFinished: () {
                          if (countTest > 5) {
                            repeader = false;
                            context.onPushAndRemoveUntil(const DetailScreen(partID: 2,));
                          }
                          if (countTest < 6) {
                              tester = !tester;
                              if (tester == false) {
                                count++;
                                countTest++;
                            }
                          }else{
                            repeader = false;
                            context.onPushAndRemoveUntil(const DetailScreen(partID: 3,));
                          }
                          setState(() {});
                        },
                      ),
                    ), 
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            );
          }
        }

        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
    );
  }
}
