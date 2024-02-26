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
      iconPath: 'assets/icons/modules/5/module-5.svg',
      description: 'Intro to Investing',
      isExpanded: false,
      levels: [
        LevelModel(
          name: 'Intro to Investing',
          iconPath: 'assets/icons/modules/5/lesson-1.svg',
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
          iconPath: 'assets/icons/modules/5/lesson-2.svg',
          lessons: [
            LessonModel(
              name: "Types of Investments",
              content: "Next, let’s look at some types of investments 💸\n\nThere’s an ocean of investments, small to large, safe to risky. It’s up to you to decide what you want to invest in.",
            ),
            LessonModel(
              name: "Cash Bank Deposits",
              content: "The safest investment option is cash bank deposits\n\nThere are two main types of accounts: savings deposit accounts. and fixed deposit accounts\n\nSavings accounts offer a modest interest rate on the deposited amount. They provide easy access to funds, allowing account holders to withdraw money as needed.\n\nFixed deposits require the depositor to lock in their money for a specified period, during which they earn a higher interest rate.",
            ),
            LessonModel(
              name: "Stocks",
              content: "Stocks are one of the most popular…yet possibly risky…types of investments.\n\nA stock, also known as equity, is a fraction of a company. Shares entitles the owner to a proportion of the corporation's assets and profits equal to how much stock they own.\n\nIf you’re interested in learning more about how to invest in stocks, be sure to visit our sub-module on Stock Market Investing 📈📉",
            ),
            LessonModel(
              name: "Bonds",
              content: "Next up are bonds.\n\nBonds are issued by governments or corporations with the purpose of raising money.\n\nBuying a bond means giving the issuer a loan, and they agree to pay you back the loan as well as periodic interest payments–usually twice a year.\n\nUnlike stocks, bonds don't give ownership rights. So you wouldn’t benefit from the company’s growth, but also wouldn’t see much impact when the company isn’t doing as well.",
            ),
            LessonModel(
              name: "Funds",
              content: "Now, let’s turn to funds.\n\nA fund pools money together, and is managed by investment managers. Funds enable investors to invest in stocks, bonds, preferred shares, commodities, etc.\n\nCommons types of funds:\n1. Mutual Funds pool money together to invest in a diverse portfolio.\n2. Exchange-traded funds (ETFs) allow investors to buy many stock/bond segments of a certain industry.",
            ),
            LessonModel(
              name: "Cryptocurrency",
              content: "Cryptocurrency is a form of digital/virtual currency 🔐 It relies on cryptography to record and verify financial transactions across a network of computers.\n\nCryptocurrencies get their name from the cryptographic techniques that let people spend them securely without the need for a central government or bank.",
            ),
            LessonModel(
              name: "Real Estate",
              content: "Real estate investing is real estate that generates rental income through price appreciation.\n\nTypes of real estate investments may include retail stores, office buildings, or storage facilities and warehouses.\n\nNote that the tax implications for investment real estate are often different from residential real estate.",
            ),
            LessonModel(
              name: "Commodities",
              content: "Last but not least are commodities.\n\nThere are several ways to invest in commodities.\n\nOne is to purchase physical raw commodities, such as metals, oil, and grain.\n\nA second option is to invest through future contracts or ETFs that track a specific commodity index.\n\nAnother commodity investment is buying items that appreciate over time. A notable example is investing in luxury collectibles that gain value as time goes on.",
            ),
          ],
        ),
        LevelModel(
          name: 'Risk and Return',
          iconPath: 'assets/icons/modules/5/lesson-3.svg',
          lessons: [
            LessonModel(
              name: "Understanding Risk",
              content: "Risk, in the context of investments, refers to the uncertainty or volatility associated with the potential for loss or gain. Components of Risk:\n\nMarket Risk: Arises from overall market movements.\n\nCredit Risk: For investors holding bonds or lending money, the failure of a borrower to meet interest or principal payments can lead to financial losses.",
            ),
            LessonModel(
              name: "Understanding Risk",
              content: "Liquidity Risk: when your money is in terms of assets, it may be hard to have money you can use in your everyday life.\n\nBusiness Risk: Business risk centers on the ability of a company to operate successfully and remain financially solvent.\n\nLegal and Regulatory Risks: Businesses and investments can be exposed to legal risks from changes in laws, regulations, or legal disputes. Managed through compliance programs, monitoring changes in regulations, and seeking legal advice.",
            ),
            LessonModel(
              name: "Some types of Investment Risk",
              content: "Country/Political Risk: The risk that a country may not honor its financial commitments, affecting various financial instruments. It is more significant with a longer investment time horizon.",
            ),
            LessonModel(
              name: "Some types of Investment Risk",
              content: "Foreign Exchange Risk: The risk that currency exchange rate fluctuations may impact the value of investments in foreign countries. Exchange rate changes can affect returns when investing in a different currency.",
            ),
            LessonModel(
              name: "Relationship Between Risk and Return",
              content: "Generally, higher potential returns are associated with higher levels of risk.\nRisk-Return Spectrum:\n\nLow Risk: Typically associated with lower returns.\n\nHigh Risk: Potential for higher returns, but with increased volatility.",
            ),
            LessonModel(
              name: "Diversification as a Risk Management Strategy",
              content: "Diversification involves spreading investments across different assets to reduce risk.\nBy investing in a variety of assets, the poor performance of one investment may be offset by the better performance of others.",
            ),
            LessonModel(
              name: "Diversification as a Risk Management Strategy",
              content: "Diversification involves spreading investments across different assets to reduce risk.\nBy investing in a variety of assets, the poor performance of one investment may be offset by the better performance of others.",
            ),
            LessonModel(
              name: "Diversification as a Risk Management Strategy",
              content: "How Much to Diversify?\n\nAsset Classes: Diversify across stocks, bonds, real estate, etc.\n\nGeographic Regions: Consider investments in different countries or regions.\n\nIndustries: Avoid concentration in a single industry.",
            ),
            LessonModel(
              name: "Diversification as a Risk Management Strategy",
              content: "When is Too Much or Too Little?\n\nUnder-Diversification: Higher risk due to lack of exposure to various assets.\nOver-Diversification: Diminishing returns as the portfolio resembles a market index.",
            ),
            LessonModel(
              name: "Risk vs Reward",
              content: "The risk-return tradeoff is the balance between the desire for the lowest possible risk and the highest possible returns.\n\nThe acceptable level of risk can be based on age, income, investment goals, liquidity needs, time horizon, and personality.",
            ),
          ],
        ),
        LevelModel(
          name: 'Investing Strategies',
          iconPath: 'assets/icons/modules/5/lesson-4.svg',
          lessons: [
            LessonModel(
              name: "Investing Strategies",
              content: "Now that you have a general understanding of different types of investing, let’s talk about how you can actually start making money off of what you've learned.\n\nThere are so many investing strategies out there, but we’re going to focus on the most common and reliable ones.",
            ),
            LessonModel(
              name: "Active Investing",
              content: "Active investing involves engaged portfolio managers – whether they are a professional or managing their personal funds – that frequently buys and sells. Active investors capitalize on short-term price fluctuations, aiming to “beat the market” with stocks, bonds, or assets.\n\nProfessional portfolio managers analyze qualitative and quantitative data, establish key metrics for determining when to buy and sell, and have strong fundamental analysis skills.",
            ),
            LessonModel(
              name: "Passive Investing",
              content: "On the other hand, passive investors limit buying and selling. Regardless of short-term fluctuations, stabilize their portfolio for the long-term. This is what we call the “buy and hold” strategy.",
            ),
            LessonModel(
              name: "Passive Investing",
              content: "The most common form of buying and holding is purchasing an index fund, which follows the biggest indices such as the S&P 500 and the Dow Jones Industrial Average (DJIA). Index funds buy the same stocks that are added to major indices and sell the same stocks that are removed from major indices.\n\nEven when their holdings experience plunges, passive investors stay patient. They are confident in their portfolio’s long-term growth.",
            ),
            LessonModel(
              name: "Value Investing",
              content: "Value investing involves purchasing stocks that trade less than their intrinsic value. Investors use various tools to determine companies that the stock market is undervaluing.",
            ),
            LessonModel(
              name: "Value Investing",
              content: "Some of the most common include:\n- Price-to-book (P/B) compares the company’s assets to the stock price.\n- Price-to-earnings (P/E) compares the company’s earnings to the stock price.\n- Free cash flow is the cash from a company’s revenue and operations after subtracting expenditures (cost of goods, sales/marketing, general and administrative expenses, research and development, and debt/interest).\n\nThese three metrics are generally available to the public!",
            ),
            LessonModel(
              name: "Growth Investing",
              content: "Growth investors pick stocks that are expected to grow above-average compared to their industry or the general stock market. Most growth investors purchase shares of smaller companies that they believe have huge profitability potential.",
            ),
            LessonModel(
              name: "Growth Investing",
              content: "The four most common metrics growth investors use to evaluate stocks are:\n1. Historical and future earnings growth - Companies should have decent earnings in the last 5 to 10 years, as well as strong earnings estimates for certain periods of time.\n2. Profit margins - Companies should exceed its previous five-year average of pretax profit margins (all expenses, exclusive of sales, divided by sales).",
            ),
            LessonModel(
              name: "Growth Investing",
              content: "3. Return on Equity (ROE) - Companies should have steady or increasing ROEs (measured by comparing company profit to the amount shareholders have invested).\n4. Share price performance - The stock price should double in five years, so the growth rate must be 15%.",
            ),
            LessonModel(
              name: "Growth Investing",
              content: "While value investors purchase stocks that are traded below their intrinsic value, growth investors put their money in companies valued above their intrinsic value, with the belief that their growth will exceed current evaluations.",
            ),
            LessonModel(
              name: "Income Investing",
              content: "The goal of income investing is to generate a constant stream of revenue. This is a great way to support your monthly income. Government bonds, when an investor lends their money to the government for bond yield in return, are regarded as the safest way to practice income investing. However, some other common income investments include stocks, corporate bonds, and real estate.",
            ),
            LessonModel(
              name: "Dollar Cost Averaging",
              content: "Dollar cost averaging is investing a fixed amount of money over a regular time period. As share prices fluctuate, the number of shares you own adjusts.",
            ),
            LessonModel(
              name: "Conclusion",
              content: "Awesome, now you’re familiar with the most common investing strategies! Before using any of these strategies to invest real money, make sure to conduct thorough research and delve deeper into how each one works.",
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
              iconPath: 'assets/icons/modules/5/submodules/1/submodule-5-1.svg',
              lessons: [
                LessonModel(
                  name: "What is a Stock?",
                  content: "Let’s start with a basic refresher. A stock is a type of security that represents an investor’s ownership of a company. Companies issue stocks to generate capital for operating their businesses. Stocks are generally bought and sold on the stock market.",
                ),
                LessonModel(
                  name: "What is a Stock?",
                  content: "There are two types of stocks: common and preferred. The primary difference between the two is that only common stocks give voting rights to holders. Voting rights allow investors to help select the Board of Directors and determine any corporate policy decisions.",
                ),
                LessonModel(
                  name: "What is the Stock Market?",
                  content: "The stock market is an exchange for publicly issued companies to be bought and sold. Stock markets allow for a “free-market economy,” allowing people to trade holdings for capital.",
                ),
                LessonModel(
                  name: "What is the Stock Market?",
                  content: "There are various existing stock markets, with the first one being the London Stock Exchange in 1773. In the U.S., the common stock market is the New York Stock Exchange, regulated by the Securities and Exchange Commission.",
                ),
                LessonModel(
                  name: "Conclusion",
                  content: "There are different types of stocks and markets, which we’ll explore in the following lessons. For now, let’s try to answer a couple questions to make sure you’re refreshed.",
                ),
              ],
            ),
            LevelModel(
              name: 'Stock Markets',
              iconPath: 'assets/icons/modules/5/submodules/1/lesson-1.svg',
              lessons: [
                LessonModel(
                  name: "The History of Stock Markets",
                  content: "You may be surprised to hear that the first stock market was created in a coffeehouse in 1773, where traders congregated to exchange shares. This was where the famous London Stock Exchange was born! In 1790, the first stock exchange in the U.S. was established in Philadelphia. Under the Buttonwood Agreement, New York’s Wall Street was established in 1792. Later, in 1817, it was renamed to the New York Stock Exchange Board.",
                ),
                LessonModel(
                  name: "Primary Markets",
                  content: "Stock markets function as both primary markets and secondary markets. Primary markets allow companies to “go public,” a procedure known as initial public offering (IPO). When a private company becomes public, it can divide itself into shares and publicly issue a portion of these shares on the stock market.",
                ),
                LessonModel(
                  name: "Primary Markets",
                  content: "During its IPO, a company's public shares are set at a common price per share, which fluctuates over time. Companies can offer new shares through rights issues or follow-on offerings. They can also decrease shares through buybacks and delistings.",
                ),
                LessonModel(
                  name: "Secondary Markets",
                  content: "The stock market is a type of secondary market where investors buy and sell shares after companies are listed on primary markets. There is no contact between traders; rather, most exchanges occur electronically.",
                ),
                LessonModel(
                  name: "Secondary Markets",
                  content: "The most important role of secondary markets is liquidity, the efficiency at which a share can be converted into cash. Because the secondary markets centralize a huge number of traders, it’s easy for all sizes of investments to be bought and sold.",
                ),
                LessonModel(
                  name: "Traders on the Stock Market",
                  content: "There are five types of traders on the stock market:\n1. Market makers are firms or individuals who provide liquidity to the markets.\n2. Investors purchase shares of a stock over the long-term.\n3. Traders purchase shares of a stock over small periods (sometimes within seconds).\n4. Speculators are investors who use short-term investing strategies to beat long-term investors.\n5. Hedgers trade derivatives, a special type of financial contract.",
                ),
                LessonModel(
                  name: "Price Discovery",
                  content: "There are many critical functions in stock markets, but in this lesson we are going to cover the top three. We already touched on capital formation (IPOs) and liquidity, which are two critical functions of stock markets. The third critical function is price discovery.",
                ),
                LessonModel(
                  name: "Price Discovery",
                  content: "After a company’s IPO, investors drive the supply and demand of its stock. As a result, the price per share will change based on investors’ opinion of the company’s value. Frequent trades cause the price per share to have constant fluctuations, the company’s current perception and possible future performance.",
                ),
                LessonModel(
                  name: "Stock Market Regulations",
                  content: "Almost every country has a stock market, and each is regulated by a local financial regulator, monetary authority, or institute. For example, in the U.S. the primary regulators are the Securities and Exchange Commission (SEC) and the Financial Industry Regulatory Authority (FINRA). Regulators oversee company dealings and set guidelines that each company must follow, such as quarterly financial reports and frequent company updates.",
                ),
              ],
            ),
            LevelModel(
              name: 'More on Stock Markets',
              iconPath: 'assets/icons/modules/5/submodules/1/lesson-1.svg',
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
              iconPath: 'assets/icons/modules/5/submodules/1/lesson-3.svg',
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
              iconPath: 'assets/icons/modules/5/submodules/1/lesson-4.svg',
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
              iconPath: 'assets/icons/modules/5/submodules/1/lesson-5.svg',
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
