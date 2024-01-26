import 'package:seed/model/lesson_model.dart';

class LevelModel {
  String name;
  String iconPath;
  List<LessonModel> lessons;

  LevelModel({
    required this.name,
    required this.iconPath,
    required this.lessons,
  });
}
