import 'package:dio/dio.dart';
import 'package:flutter_solid/core/constants/constants.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/article.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsApiBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apikey") String? apikey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}
