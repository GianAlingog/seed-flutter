import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:seed/model/category_model.dart';
import 'package:seed/model/module_model.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<CategoryModel> categories = [];
  List<ModuleModel> modules = [];

  void _getInitialInfo() {
    // categories = CategoryModel.getCategories();
    modules = ModuleModel.getModules();
  }

  // @override
  // void initState() {

  // }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // _searchField(),
          // const SizedBox(height: 20,),
          // _categoriesSection()
          const SizedBox(height: 20),
          Expanded(
            child: _modulesSection(),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Column _modulesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Modules',
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
            itemCount: modules.length,
            // shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 25,),
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xff1D1617).withOpacity(0.07),
                          offset: const Offset(0, 10),
                          blurRadius: 40,
                          spreadRadius: 0)
                    ]),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: SvgPicture.asset(
                          modules[index].iconPath,
                          width: 65,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              modules[index].name,
                              style: GoogleFonts.leagueSpartan(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff58C1FF),
                                    fontSize: 20),
                              ),
                            ),
                            Text(
                              modules[index].description,
                              style: GoogleFonts.libreFranklin(
                                textStyle: const TextStyle(
                                    color: Color(0xff7B6F72),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/icons/button.svg',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
              );
            }),
        )
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        'assets/icons/seed-logo.svg',
        height: 40,
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
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
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 5,
              width: 5,
            ),
          ),
        ),
      ],
    );
  }
}