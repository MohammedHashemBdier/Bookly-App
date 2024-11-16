import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            textColor: Colors.black,
            backgroundColor: Colors.white,
            data: "19.99\$",
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
            data: "Free preview",
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
