import 'package:flutter/material.dart';
import 'package:news_app/widget/news_list_view_bulider.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBulider(
            category: category,
          ),
        ],
      ),
    );
  }
}
