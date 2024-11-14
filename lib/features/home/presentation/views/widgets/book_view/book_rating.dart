import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFF9E153),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "4.8",
          style: AppStyles.textStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "(254)",
          style: AppStyles.textStyle14,
        ),
      ],
    );
  }
}
