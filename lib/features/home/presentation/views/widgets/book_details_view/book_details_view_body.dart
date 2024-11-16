import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * .2,
            ),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            "The Jungel Book",
            style: AppStyles.textStyle20GtSectraFine,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              "J.K Roling",
              style: AppStyles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
