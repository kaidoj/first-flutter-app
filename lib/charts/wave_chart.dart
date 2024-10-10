import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:first_app/resources/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class _LineChart extends StatelessWidget {
  const _LineChart({required this.data});

  final List<double> data;

  @override
  Widget build(BuildContext context) {
    return LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                curveSmoothness: 0,
                color: AppColors.contentColorCyan.withOpacity(0.5),
                gradient: const LinearGradient(
                  colors: [AppColors.gradientStart, AppColors.gradientEnd],
                  stops: [0, 1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                belowBarData: BarAreaData(
                    show: true,
                    color: AppColors.contentColorPurple.withOpacity(0.5),
                    gradient: const LinearGradient(
                      colors: [AppColors.gradientStart, AppColors.gradientEnd],
                      stops: [0, 1],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                barWidth: 4,
                isStrokeCapRound: true,
                spots: data.asMap().entries.map((e) {
                  return FlSpot(e.key.toDouble(), e.value);
                }).toList(),
              ),
            ],
            titlesData: FlTitlesData(
                topTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                rightTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                leftTitles: AxisTitles(
                    axisNameSize: 30,
                    axisNameWidget: Align(
                      alignment: const Alignment(0.5, 0),
                      child: Text(
                      'Battery (%)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.contentColorWhite,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 14,
                      ),
                      ),
                    ),
                    sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 32,
                        getTitlesWidget: leftTitleWidget)),
                bottomTitles: AxisTitles(
                    axisNameSize: 25,
                    axisNameWidget: Text(
                      'Time (Hours)',
                      style: TextStyle(
                        color: AppColors.contentColorWhite,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 14,
                      ),
                    ),
                    sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 32,
                        getTitlesWidget: bottomTitleWidget))),
            borderData: FlBorderData(show: false),
          ),
    );
  }

  Text leftTitleWidget(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      100 => '100',
      90 => '90',
      80 => '80',
      70 => '70',
      60 => '60',
      50 => '50',
      40 => '40',
      30 => '30',
      20 => '20',
      10 => '10',
      0 => '0',
      _ => '',
    };

    return Text(
      text,
      style: TextStyle(
        color: AppColors.contentColorWhite,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 14,
      ),
    );
  }

  Padding bottomTitleWidget(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      1 => '1 AM',
      2 => '2 AM',
      3 => '3 AM',
      4 => '4 AM',
      5 => '5 AM',
      6 => '6 AM',
      7 => '7 AM',
      8 => '8 AM',
      9 => '9 AM',
      10 => '10 AM',
      11 => '11 AM',
      12 => '12 PM',
      13 => '1 PM',
      14 => '2 PM',
      15 => '3 PM',
      16 => '4 PM',
      17 => '5 PM',
      18 => '6 PM',
      19 => '7 PM',
      20 => '8 PM',
      21 => '9 PM',
      22 => '10 PM',
      23 => '11 PM',
      24 => '12 AM',
      _ => '',
    };

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.contentColorWhite,
          fontWeight: FontWeight.w400,
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontSize: 14,
        ),
      ),
    );
  }
}

class WaveChart extends StatefulWidget {
  const WaveChart({super.key});

  @override
  State<WaveChart> createState() => _WaveChartState();
}

class _WaveChartState extends State<WaveChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: const _LineChart(data: [
            100.0,
            96.4,
            91.9,
            87.5,
            84.0,
            80.8,
            76.8,
            73.3,
            70.3,
            66.4,
            62.9,
            59.1,
            55.7,
            52.5,
            49.4,
            46.4,
            43.6,
            41.1,
            39.0,
            37.1,
            35.3,
            33.3,
            31.3,
            26.8,
            20.0
      ]),
    );
  }
}
