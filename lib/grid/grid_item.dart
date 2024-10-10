import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_app/resources/app_colors.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.title, required this.value, required this.icon});

  final String title;
  final String value;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.contentColorDarkGray.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15, right: 10),
                child: Image.asset(icon, height: 25)
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  color: AppColors.contentColorWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                value,
                style: GoogleFonts.poppins(
                  color: AppColors.contentColorWhite,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}