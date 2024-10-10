import 'package:first_app/charts/wave_chart.dart';
import 'package:first_app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChartTabs extends StatefulWidget {
  const ChartTabs({super.key});

  @override
  State<ChartTabs> createState() => _ChartTabsState();
}

class _ChartTabsState extends State<ChartTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 340,
        child: DefaultTabController(
          length: 3, // Number of tabs
          child: Column(
            children: [
               // The tab content
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 0,
                  ),
                  child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        right: 35,
                      ),
                      child: WaveChart()
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        right: 35,
                      ),
                      child: WaveChart()
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        right: 35,
                      ),
                      child: WaveChart()
                    ),
                  ],
                ),
                ),
              ),
              // Container for the rounded gray background and tabs
              Container(
                height: 45,
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: BoxDecoration(
                  color: AppColors.contentColorDarkGray, // Gray background for the tab container
                  borderRadius: BorderRadius.circular(20), // Rounded container
                ),
                child: TabBar(
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color:
                        AppColors.contentColorLightGray, // Black background for the selected tab
                    borderRadius:
                        BorderRadius.circular(20),
                  ),
                  labelColor: AppColors.contentColorWhite, // Text color for active tab
                  unselectedLabelColor:
                      AppColors.contentColorWhite, // Text color for inactive tabs
                  tabs: const [
                    Tab(text: 'Battery'),
                    Tab(text: 'Altitude'),
                    Tab(text: 'Speed'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
