import 'package:flutter/foundation.dart';
import 'package:news_portal/news_model/news_model.dart';
import 'package:news_portal/service/news_portal_api_service.dart';
import 'package:provider/provider.dart';

class NewsProvider with ChangeNotifier {
  List<Articles> newsList = [];

  Future<List<Articles>> getNewsData(
      {required int page, required String sortBy}) async {
    newsList = await NewsApiService.fetchNewsData(page: page, sortBy: sortBy);
    return newsList;
  }

 Articles sortByDate({required String date}){
   return newsList.firstWhere((element) => element.publishedAt==date);
  }
}
