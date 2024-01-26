import 'package:seed/model/level_model.dart';

class SubmoduleModel {
  int id;
  String name;
  List<LevelModel> levels;

  SubmoduleModel({
    required this.id,
    required this.name,
    required this.levels,
  });
}
