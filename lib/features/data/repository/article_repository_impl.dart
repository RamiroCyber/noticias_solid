import 'package:flutter_solid/core/resources/data_state.dart';
import 'package:flutter_solid/features/data/models/article.dart';
import 'package:flutter_solid/features/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {

    throw UnimplementedError();
  }

}