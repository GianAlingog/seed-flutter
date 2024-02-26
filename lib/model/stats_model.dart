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
      iconPath: "assets/icons/stats/credits.svg",
      value: 0
    ));

    stats.add(StatsModel(
      name: "Streak",
      iconPath: "assets/icons/stats/streak.svg",
      value: 0
    ));

    stats.add(StatsModel(
      name: "Lives",
      iconPath: "assets/icons/stats/lives.svg",
      value: 5
    ));

    stats.add(StatsModel(
      name: "XP",
      iconPath: "assets/icons/stats/xp.svg",
      value: 0
    ));

    return stats;
  }
}
