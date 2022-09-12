import 'package:flutter/material.dart';
import 'package:newsapp/model/news_model.dart';
import 'package:newsapp/services/news_api.dart';

class NewsProvider with ChangeNotifier{

  List<Article> newsList=[];

  //List<Article> get getNewsList=>newsList;


  Future<List<Article>> fetchAllNewsData({required int page,required String sortBy})async{
    newsList=await NewsApiService.getAllNews(page: page,sortBy:sortBy);
    return newsList;
  }

   Article  findByDate({required String publishAt}) {
    return newsList.firstWhere((element) => element.publishedAt==publishAt);
  }


  Future<List<Article>> fetchTopHeadlines( )async{
    newsList=await NewsApiService.getTopHeadlines( );
    return newsList;
  }


  Future<List<Article>> searchNewsProvider({required String query})async{
    newsList=await NewsApiService.saerchNews(query: query );
    return newsList;
  }                                                                                                  
}