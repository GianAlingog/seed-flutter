class ModuleModel {
  int id;
  String name;
  String iconPath;
  String description;
  bool isExpanded;
  List<String> submodules;

  ModuleModel({
    required this.id,
    required this.name,
    required this.iconPath,
    required this.description,
    required this.isExpanded,
    required this.submodules
  });

  static List<ModuleModel> getModules() {
    List<ModuleModel> modules = [];

    modules.add(ModuleModel(
      id: 5,
      name: 'Module 5',
      iconPath: 'assets/icons/module-5.svg',
      description: 'Intro to Investing',
      isExpanded: false,
      submodules: ["Stock Market Investing"]
    ));

    return modules;
  }
}
