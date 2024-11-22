import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          const CustomSearchTextField(),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Search Result",
            style: AppStyles.textStyle18,
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
