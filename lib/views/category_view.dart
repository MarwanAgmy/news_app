import 'package:flutter/material.dart';
import 'package:news_app/widget/news_list_view_bulider.dart';

class CategoryView extends StatelessWidget {
  const CategoryView(
      {super.key, required this.category, required this.textAppBar});
  final String category;
  final String textAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          textAppBar,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
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
