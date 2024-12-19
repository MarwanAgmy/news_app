import 'package:flutter/material.dart';
import 'package:news_app/widget/categories_list_view.dart';

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
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
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

        /*Column(
          children: [
            CategioresListView(),
            SizedBox(
              height: 32,
            ),
            Expanded(child: NewsListView()),
          ],
        ),*/
      ),
    );
  }
}



/*import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  bool isLoding = true;
  List<ArticleModel> articles = [
    /*ArticleModel(
        image: 'assets/sports.avif',
        title:
            'kgyvhmmmmmmmmmmmmmmmmmmmmmmmmmmmmyfgdcghhvgiugiughkubkjbkhbugubkuhiughuhbkjbiugiu',
        subTitle:
            'djaidaijdajdoajdoajdoa;sdlksdjlasjdoapdojoasjfodsfldjfodsjfosdofjodfjod'),
    ArticleModel(
        image: 'assets/science.avif',
        title:
            'kgyvhmmmmmmmmmmmmmmmmmmmmmmmmmmmmyfgdcghhvgiugiughkubkjbkhbugubkuhiughuhbkjbiugiu',
        subTitle:
            'djaidaijdajdoajdoajdoa;sdlksdjlasjdoapdojoasjfodsfldjfodsjfosdofjodfjod'),
    ArticleModel(
        image: 'assets/entertaiment.avif',
        title:
            'kgyvhmmmmmmmmmmmmmmmmmmmmmmmmmmmmyfgdcghhvgiugiughkubkjbkhbugubkuhiughuhbkjbiugiu',
        subTitle:
            'djaidaijdajdoajdoajdoa;sdlksdjlasjdoapdojoasjfodsfldjfodsjfosdofjodfjod'),
    ArticleModel(
        image: 'assets/general.avif',
        title:
            'kgyvhmmmmmmmmmmmmmmmmmmmmmmmmmmmmyfgdcghhvgiugiughkubkjbkhbugubkuhiughuhbkjbiugiu',
        subTitle:
            'djaidaijdajdoajdoajdoa;sdlksdjlasjdoapdojoasjfodsfldjfodsjfosdofjodfjod'),
    ArticleModel(
        image: 'assets/health.avif',
        title:
            'kgyvhmmmmmmmmmmmmmmmmmmmmmmmmmmmmyfgdcghhvgiugiughkubkjbkhbugubkuhiughuhbkjbiugiu',
        subTitle:
            'djaidaijdajdoajdoajdoa;sdlksdjlasjdoapdojoasjfodsfldjfodsjfosdofjodfjod'),*/
  ];
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoding = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoding
        ? const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return NewsTile(articleModel: articles[index]);
          }));

    /*ListView.builder(
      //shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(newsModel: newsList[index]),
        );
      },
    )*/
  }
}
 */