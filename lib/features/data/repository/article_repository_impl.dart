import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_solid/core/constants/constants.dart';
import 'package:flutter_solid/core/resources/data_state.dart';
import 'package:flutter_solid/features/data/data_sources/remote/news_api_service.dart';
import 'package:flutter_solid/features/data/models/article.dart';
import 'package:flutter_solid/features/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
          apikey: newsApikey, category: categoryQuery, country: countryQuery);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (error) {
      return DataFailed(error);
    }
  }
}
