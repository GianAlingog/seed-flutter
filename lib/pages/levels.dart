import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seed/model/stats_model.dart';

class LevelSelect extends StatefulWidget {
  const LevelSelect({super.key});

  @override
  State<LevelSelect> createState() => _LevelSelectState();
}

class _LevelSelectState extends State<LevelSelect> {
  List<StatsModel> stats = [];

  void _getInitialInfo() {
    // categories = CategoryModel.getCategories();
    stats = StatsModel.getStats();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            'assets/icons/Arrow - Left 2.svg',
            height: 20,
            width: 20,
          ),
        ),
      ),
      title: SizedBox(
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: stats.length,
              separatorBuilder: (context, index) => const SizedBox(width: 40),
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      stats[index].iconPath,
                      width: 25,
                    ),
                    const SizedBox(width: 5,),
                    Text(
                      stats[index].value.toString(),
                      style: GoogleFonts.leagueSpartan(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff58C1FF),
                            fontSize: 20),
                      ),
                    )
                  ],
                );
              },
            ),
        ]),
      ),
    );
  }
}
