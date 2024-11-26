import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/functions/lunch_custom_url.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            textColor: Colors.black,
            backgroundColor: Colors.white,
            data: "Free",
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: CustomButton(
            textColor: Colors.black,
            backgroundColor: const Color(0xFFE67A66),
            data: getText(bookModel),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            onPressed: () {
              lunchCustomUrl(
                context,
                bookModel.volumeInfo.previewLink!,
              );
            },
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return "Not avaliable to Free Preview";
    } else {
      return "Free Preview";
    }
  }
}
