import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seed/model/lesson_model.dart';
import 'package:seed/model/level_model.dart';
import 'package:seed/model/stats_model.dart';

class LessonPage extends StatefulWidget {
  LevelModel level;
  LessonPage({super.key, required this.level});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  List<StatsModel> stats = StatsModel.getStats();
  late List<LessonModel> lessons = widget.level.lessons;
  int index = 0;

  void _incrementIndex() {
    index++;
    setState(() {});
  }

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
            child: Stack(children: [
              _lessonSection(),
              GestureDetector(
                onTap: () {
                  if (index < lessons.length - 1) {
                    _incrementIndex();
                  } else {
                    Navigator.pop(context);
                  }
                },
              )
            ]),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Column _lessonSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            lessons[index].name,
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
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text(
            lessons[index].content,
            style: GoogleFonts.libreFranklin(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        )),
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
