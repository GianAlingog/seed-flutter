import 'package:seed/model/level_model.dart';
import 'package:seed/model/submodule_model.dart';

class ModuleModel {
  int id;
  String name;
  String iconPath;
  String description;
  bool isExpanded;
  List<LevelModel> levels;
  List<SubmoduleModel> submodules;

  ModuleModel({
    required this.id,
    required this.name,
    required this.iconPath,
    required this.description,
    required this.isExpanded,
    required this.levels,
    required this.submodules,
  });

  static List<ModuleModel> getModules() {
    List<ModuleModel> modules = [];

    modules.add(ModuleModel(
      id: 0,
      name: 'Module 5',
      iconPath: 'assets/icons/module-5.svg',
      description: 'Intro to Investing',
      isExpanded: false,
      levels: [
        LevelModel(name: 'Intro to Investing', iconPath: 'assets/icons/module-5.svg'),
        LevelModel(name: 'Types of Investments', iconPath: 'assets/icons/module-5.svg'),
        LevelModel(name: 'Risk and Return', iconPath: 'assets/icons/module-5.svg'),
        LevelModel(name: 'Investing Strategies', iconPath: 'assets/icons/module-5.svg'),
      ],
      submodules: [
        SubmoduleModel(
          id: 0,
          name: 'Stock Market Investing',
          levels: [
            LevelModel(name: 'Refresher: Stock and the Stock Market', iconPath: 'assets/icons/module-5.svg'),
            LevelModel(name: 'Stock Markets', iconPath: 'assets/icons/module-5.svg'),
            LevelModel(name: 'More on Stock Markets', iconPath: 'assets/icons/module-5.svg'),
            LevelModel(name: 'Types of Stocks', iconPath: 'assets/icons/module-5.svg'),
            LevelModel(name: 'Long-Term Investing Strategies', iconPath: 'assets/icons/module-5.svg'),
            LevelModel(name: 'Short-Term Investing Strategies', iconPath: 'assets/icons/module-5.svg'),
          ],
        ),
      ]
    ));

    return modules;
  }
}
