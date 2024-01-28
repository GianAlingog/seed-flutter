import 'package:seed/model/lesson_model.dart';
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
        LevelModel(
          name: 'Intro to Investing',
          iconPath: 'assets/icons/module-5.svg',
          lessons: [
            LessonModel(
              name: "What is Investing?",
              content: "Simply put, investing is the act of purchasing assets in the hopes that they will increase in value over time. Assets can be stocks, bonds, real estate, etc.\n\nIn this module, you will learn what are the different types of investments, the risk that investing present, as well as some useful investing strategies.",
            ),
            LessonModel(
              name: "Historical Overview",
              content: "The history of investing started in the 1600s, when shipping became a significant industry in the western world. British, Dutch, and French traveled to for away places in search of commodities. Because these voyages were filled with risk, ship owners sought investors to collect funds. If the trips proved to be profitable, investors would get a portion of the profits.",
            ),
            LessonModel(
              name: "Why is Investing Important?",
              content: "Wealth Building: Investing provides an opportunity to grow wealth over the long term. By putting money into assets that have the potential to appreciate, individuals can accumulate financial resources and work towards their financial goals.\n\nBeat Inflation: Investing in assets that outpace inflation helps maintain and increase the real value of your wealth.\n\nFinancial Security: Investing can contribute to financial security by having various places where you put your money. Diversification within your investments is also important to prevent losses!",
            ),
            LessonModel(
              name: "Why You Should Start Investing Now",
              content: "The Power of Compounding: Time is a critical factor in investing due to the compounding effect. Compounding allows your investment returns to generate additional returns, creating a snowball effect. The earlier you start, the more time your investments have to grow.\n\nRisk Tolerance: Younger individuals often have a higher risk tolerance, as they have more time to recover from potential losses. This allows for a more aggressive investment approach, which can lead to higher returns.\n\nLearn by Doing: Investing is a skill that improves with experience. Starting early provides an opportunity to learn about different investment vehicles, market dynamics, and risk management strategies.",
            ),
            LessonModel(
              name: "Why You Should Start Investing Now",
              content: "Take Advantage of Market Ups and Downs: Markets go through cycles of ups and downs. Starting to invest now allows you to benefit from market appreciation while also taking advantage of buying opportunities during market downturns.\n\nRemember…\nWhile investing offers the potential for returns, it also involves risks. It's crucial to conduct thorough research, diversify your portfolio, and consider consulting with financial professionals to make informed investment decisions.",
            ),
          ],
        ),
        LevelModel(
          name: 'Types of Investments',
          iconPath: 'assets/icons/module-5.svg',
          lessons: [
            LessonModel(
              name: "What is Investing?",
              content: "Simply put, investing is the act of purchasing assets in the hopes that they will increase in value over time. Assets can be stocks, bonds, real estate, etc.\n\nIn this module, you will learn what are the different types of investments, the risk that investing present, as well as some useful investing strategies.",
            ),
            LessonModel(
              name: "Historical Overview",
              content: "The history of investing started in the 1600s, when shipping became a significant industry in the western world. British, Dutch, and French traveled to for away places in search of commodities. Because these voyages were filled with risk, ship owners sought investors to collect funds. If the trips proved to be profitable, investors would get a portion of the profits.",
            ),
          ],
        ),
        LevelModel(
          name: 'Risk and Return',
          iconPath: 'assets/icons/module-5.svg',
          lessons: [
            LessonModel(
              name: "What is Investing?",
              content: "Simply put, investing is the act of purchasing assets in the hopes that they will increase in value over time. Assets can be stocks, bonds, real estate, etc.\n\nIn this module, you will learn what are the different types of investments, the risk that investing present, as well as some useful investing strategies.",
            ),
            LessonModel(
              name: "Historical Overview",
              content: "The history of investing started in the 1600s, when shipping became a significant industry in the western world. British, Dutch, and French traveled to for away places in search of commodities. Because these voyages were filled with risk, ship owners sought investors to collect funds. If the trips proved to be profitable, investors would get a portion of the profits.",
            ),
          ],
        ),
        LevelModel(
          name: 'Investing Strategies',
          iconPath: 'assets/icons/module-5.svg',
          lessons: [
            LessonModel(
              name: "What is Investing?",
              content: "Simply put, investing is the act of purchasing assets in the hopes that they will increase in value over time. Assets can be stocks, bonds, real estate, etc.\n\nIn this module, you will learn what are the different types of investments, the risk that investing present, as well as some useful investing strategies.",
            ),
            LessonModel(
              name: "Historical Overview",
              content: "The history of investing started in the 1600s, when shipping became a significant industry in the western world. British, Dutch, and French traveled to for away places in search of commodities. Because these voyages were filled with risk, ship owners sought investors to collect funds. If the trips proved to be profitable, investors would get a portion of the profits.",
            ),
          ],
        ),
      ],
      submodules: [
        SubmoduleModel(
          id: 0,
          name: 'Stock Market Investing',
          levels: [
            LevelModel(
              name: 'Refresher: Stock and the Stock Market',
              iconPath: 'assets/icons/module-5.svg',
              lessons: [
                LessonModel(
                  name: "What is Investing?",
                  content: "Simply put, investing is the act of purchasing assets in the hopes that they will increase in value over time. Assets can be stocks, bonds, real estate, etc.\n\nIn this module, you will learn what are the different types of investments, the risk that investing present, as well as some useful investing strategies.",
                ),
                LessonModel(
                  name: "Historical Overview",
                  content: "The history of investing started in the 1600s, when shipping became a significant industry in the western world. British, Dutch, and French traveled to for away places in search of commodities. Because these voyages were filled with risk, ship owners sought investors to collect funds. If the trips proved to be profitable, investors would get a portion of the profits.",
                ),
              ],
            ),
            LevelModel(
              name: 'Stock Markets',
              iconPath: 'assets/icons/module-5.svg',
              lessons: [
                LessonModel(
                  name: "What is Investing?",
                  content: "Simply put, investing is the act of purchasing assets in the hopes that they will increase in value over time. Assets can be stocks, bonds, real estate, etc.\n\nIn this module, you will learn what are the different types of investments, the risk that investing present, as well as some useful investing strategies.",
                ),
                LessonModel(
                  name: "Historical Overview",
                  content: "The history of investing started in the 1600s, when shipping became a significant industry in the western world. British, Dutch, and French traveled to for away places in search of commodities. Because these voyages were filled with risk, ship owners sought investors to collect funds. If the trips proved to be profitable, investors would get a portion of the profits.",
                ),
              ],
            ),
            LevelModel(
              name: 'More on Stock Markets',
              iconPath: 'assets/icons/module-5.svg',
              lessons: [
                LessonModel(
                  name: "What is Investing?",
                  content: "Simply put, investing is the act of purchasing assets in the hopes that they will increase in value over time. Assets can be stocks, bonds, real estate, etc.\n\nIn this module, you will learn what are the different types of investments, the risk that investing present, as well as some useful investing strategies.",
                ),
                LessonModel(
                  name: "Historical Overview",
                  content: "The history of investing started in the 1600s, when shipping became a significant industry in the western world. British, Dutch, and French traveled to for away places in search of commodities. Because these voyages were filled with risk, ship owners sought investors to collect funds. If the trips proved to be profitable, investors would get a portion of the profits.",
                ),
              ],
            ),
            LevelModel(
              name: 'Types of Stocks',
              iconPath: 'assets/icons/module-5.svg',
              lessons: [
                LessonModel(
                  name: "What is Investing?",
                  content: "Simply put, investing is the act of purchasing assets in the hopes that they will increase in value over time. Assets can be stocks, bonds, real estate, etc.\n\nIn this module, you will learn what are the different types of investments, the risk that investing present, as well as some useful investing strategies.",
                ),
                LessonModel(
                  name: "Historical Overview",
                  content: "The history of investing started in the 1600s, when shipping became a significant industry in the western world. British, Dutch, and French traveled to for away places in search of commodities. Because these voyages were filled with risk, ship owners sought investors to collect funds. If the trips proved to be profitable, investors would get a portion of the profits.",
                ),
              ],
            ),
            LevelModel(
              name: 'Long-Term Investing Strategies',
              iconPath: 'assets/icons/module-5.svg',
              lessons: [
                LessonModel(
                  name: "What is Investing?",
                  content: "Simply put, investing is the act of purchasing assets in the hopes that they will increase in value over time. Assets can be stocks, bonds, real estate, etc.\n\nIn this module, you will learn what are the different types of investments, the risk that investing present, as well as some useful investing strategies.",
                ),
                LessonModel(
                  name: "Historical Overview",
                  content: "The history of investing started in the 1600s, when shipping became a significant industry in the western world. British, Dutch, and French traveled to for away places in search of commodities. Because these voyages were filled with risk, ship owners sought investors to collect funds. If the trips proved to be profitable, investors would get a portion of the profits.",
                ),
              ],
            ),
            LevelModel(
              name: 'Short-Term Investing Strategies',
              iconPath: 'assets/icons/module-5.svg',
              lessons: [
                LessonModel(
                  name: "What is Investing?",
                  content: "Simply put, investing is the act of purchasing assets in the hopes that they will increase in value over time. Assets can be stocks, bonds, real estate, etc.\n\nIn this module, you will learn what are the different types of investments, the risk that investing present, as well as some useful investing strategies.",
                ),
                LessonModel(
                  name: "Historical Overview",
                  content: "The history of investing started in the 1600s, when shipping became a significant industry in the western world. British, Dutch, and French traveled to for away places in search of commodities. Because these voyages were filled with risk, ship owners sought investors to collect funds. If the trips proved to be profitable, investors would get a portion of the profits.",
                ),
              ],
            ),
          ],
        ),
      ]
    ));

    return modules;
  }
}
