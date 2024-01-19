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
      iconPath: "assets/icons/coins-dollar-money-currency-finance-payment-svgrepo-com.svg",
      value: 0
    ));

    stats.add(StatsModel(
      name: "Streak",
      iconPath: "assets/icons/fire-svgrepo-com.svg",
      value: 0
    ));

    stats.add(StatsModel(
      name: "Lives",
      iconPath: "assets/icons/heart-svgrepo-com.svg",
      value: 5
    ));

    stats.add(StatsModel(
      name: "XP",
      iconPath: "assets/icons/up-round-svgrepo-com.svg",
      value: 0
    ));

    return stats;
  }
}
