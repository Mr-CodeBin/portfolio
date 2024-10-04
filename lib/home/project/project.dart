import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/utils/colors.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  List<ProjectsModel> projects = [
    ProjectsModel(
      title: "Kemampuan Merangkum Tulisan 1",
      image:
          "https://cdn.prod.website-files.com/65d8574ccf980494e7d27ad6/65d8574ccf980494e7d27cb8_65ce017eaa4eadb4e582752d_65c9d364707f20d739b99926_workplace-results-professional-report-accounting-during-1-p-500.jpeg",
      subtitle1: "BAHASA SUNDA",
      subtitle2: "Oleh Al-Baiqi Samaan",
    ),
    ProjectsModel(
      title: "Kemampuan Merangkum Tulisan 2",
      image:
          "https://cdn.prod.website-files.com/65d8574ccf980494e7d27ad6/65d8574ccf980494e7d27cb8_65ce017eaa4eadb4e582752d_65c9d364707f20d739b99926_workplace-results-professional-report-accounting-during-1-p-500.jpeg",
      subtitle1: "BAHASA SUNDA",
      subtitle2: "Oleh Al-Baiqi Samaan",
    ),
    ProjectsModel(
      title: "Kemampuan Merangkum Tulisan 3",
      image:
          "https://cdn.prod.website-files.com/65d8574ccf980494e7d27ad6/65d8574ccf980494e7d27cb8_65ce017eaa4eadb4e582752d_65c9d364707f20d739b99926_workplace-results-professional-report-accounting-during-1-p-500.jpeg",
      subtitle1: "BAHASA SUNDA",
      subtitle2: "Oleh Al-Baiqi Samaan",
    ),
    ProjectsModel(
      title: "Kemampuan Merangkum Tulisan 4",
      image:
          "https://cdn.prod.website-files.com/65d8574ccf980494e7d27ad6/65d8574ccf980494e7d27cb8_65ce017eaa4eadb4e582752d_65c9d364707f20d739b99926_workplace-results-professional-report-accounting-during-1-p-500.jpeg",
      subtitle1: "BAHASA SUNDA",
      subtitle2: "Oleh Al-Baiqi Samaan",
    ),
    ProjectsModel(
      title: "Kemampuan Merangkum Tulisan 5",
      image:
          "https://cdn.prod.website-files.com/65d8574ccf980494e7d27ad6/65d8574ccf980494e7d27cb8_65ce017eaa4eadb4e582752d_65c9d364707f20d739b99926_workplace-results-professional-report-accounting-during-1-p-500.jpeg",
      subtitle1: "BAHASA SUNDA",
      subtitle2: "Oleh Al-Baiqi Samaan",
    ),
  ];

  List<ProjectsModel> filteredProjects = [];

  void filterList(String title) {
    if (title.isEmpty) {
      setState(() {
        filteredProjects = projects;
      });
      return;
    }
    setState(() {
      filteredProjects = projects
          .where((element) =>
              element.title.toLowerCase().contains(title.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    filteredProjects = projects;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 12.h,
            ),

            /// Search bar
            SizedBox(
              height: 44.h,
              width: 343.w,
              child: TextField(
                onChanged: (value) {
                  filterList(value);
                },
                decoration: InputDecoration(
                  hintText: "Search a project",
                  hintStyle: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  suffixIcon: Container(
                    width: 28.w,
                    height: 28.h,
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: PortfolioColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),

            /// Projects
            Expanded(
                child: ListView.builder(
              itemCount: filteredProjects.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 110.h,
                  width: 343.w,
                  margin: const EdgeInsets.only(bottom: 12),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        filteredProjects[index].image,
                        width: 110.w,
                        height: 110.h,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200.w,
                              child: Text(
                                filteredProjects[index].title,
                                style: GoogleFonts.roboto(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 210.w,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        filteredProjects[index].subtitle1,
                                        style: GoogleFonts.roboto(
                                          fontSize: 10.sp,
                                          color: PortfolioColors
                                              .projectCardSubtitle1,
                                        ),
                                      ),
                                      Text(
                                        filteredProjects[index].subtitle2,
                                        style: GoogleFonts.roboto(
                                          fontSize: 10.sp,
                                          color: PortfolioColors
                                              .projectCardSubtitle2,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 50.w,
                                    height: 26.h,
                                    decoration: BoxDecoration(
                                      // color: PortfolioColors.cardColor1,
                                      borderRadius: BorderRadius.circular(6),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          PortfolioColors.cardColor1,
                                          PortfolioColors.cardColor2,
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "A",
                                        style: GoogleFonts.roboto(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
