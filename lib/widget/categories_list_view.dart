import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

import 'category_card.dart';

class CategioresListView extends StatelessWidget {
  const CategioresListView({
    super.key,
  });
  final List<CategoryModel> cardList = const [
    CategoryModel(image: 'assets/Business.jpg', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(image: 'assets/general.avif', categoryName: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cardList.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: cardList[index]);
          }),
    );
  }
}
