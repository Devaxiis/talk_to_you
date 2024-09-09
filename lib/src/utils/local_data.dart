import 'package:speak_with_you/src/domain/part_models.dart';

sealed class LocalData {
  static final partOne = PartModels(
      partName: "Part One",
      partDesc: "In this part, I will ask you a few questions.\nFor each question:",
      partShortTimeLine: "* You will have 5 seconds to think. ",
      partLongTimeLine: "* You will have 30 seconds to answer. ");
  static final partTwo = PartModels(
      partName: "Part Two",
      partDesc: "In this part, you will be given a picture and you need to make a speach for its questions.You should not describe the picture",
      partShortTimeLine: "* You will have 5 minute to think of what to say",
      partLongTimeLine: "* You will have 2 minutes to answer");
  static final partThree = PartModels(
      partName: "Part Three",
      partDesc: "In this part, you will be given an argument with ideas and you need to make a speach using the given ideas",
      partShortTimeLine: "* You will have 1 minute to think of what to say",
      partLongTimeLine: "* You will have 2 minutes to answer");
}
