class StatsModel {
  String name;
  String iconPath;
  int value;

  StatsModel({
    required this.name,
    required this.iconPath,
    required this.value,
  });

  static List<StatsModel> getStats() {
    List<StatsModel> stats = [];

    stats.add(StatsModel(
      name: "Credits",
      iconPath: "",
      value: 0
    ));

    stats.add(StatsModel(
      name: "Streak",
      iconPath: "",
      value: 0
    ));

    stats.add(StatsModel(
      name: "Lives",
      iconPath: "",
      value: 5
    ));

    stats.add(StatsModel(
      name: "XP",
      iconPath: "",
      value: 0
    ));

    return stats;
  }
}
