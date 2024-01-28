import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seed/model/level_model.dart';
import 'package:seed/model/module_model.dart';
import 'package:seed/model/stats_model.dart';
import 'package:seed/model/submodule_model.dart';
import 'package:seed/pages/lesson.dart';

class LevelSelect extends StatefulWidget { // Refactor to LevelSelectPage
  ModuleModel? module;
  SubmoduleModel? submodule;

  LevelSelect({super.key, required this.module});
  LevelSelect.submodule({super.key, required this.submodule});

  @override
  State<LevelSelect> createState() => _LevelSelectState();
}

class _LevelSelectState extends State<LevelSelect> {
  List<StatsModel> stats = StatsModel.getStats();
  late List<LevelModel>? levels = widget.module?.levels ?? widget.submodule?.levels;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: _levelSection(),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Column _levelSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text(
            'Levels',
            style: GoogleFonts.leagueSpartan(
              textStyle: const TextStyle(
                  color: Color(0xff85D87C),
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: levels!.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 40,
            ),
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LessonPage(level: levels![index])));
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(50)),
                      child: SvgPicture.asset(
                        levels![index].iconPath,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    levels![index].name,
                    style: GoogleFonts.leagueSpartan(
                      textStyle: const TextStyle(
                          color: Color(0xff85D87C),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              );
            }),
          ),
        ),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      scrolledUnderElevation: 0.0,
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
                      const SizedBox(
                        width: 5,
                      ),
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
