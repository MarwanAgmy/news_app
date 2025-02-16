import 'package:flutter/material.dart';
import 'package:news_app/widget/categories_list_view.dart';
import 'package:news_app/widget/title_app_bar.dart';

import '../widget/news_list_view_bulider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //مؤقته
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const TitleAppBar(),
      ),
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CategioresListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          NewsListViewBulider(
            category: 'general',
          ),
        ],
      ),
    );
  }
}
