import 'package:flutter_solid/features/domain/entities/article.dart';
import '../../../core/resources/data_state.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  Future<List<ArticleEntity>> getSavedArticles();

  Future<void> saveArticle(ArticleEntity articleEntity);

  Future<void> deleteArticle(ArticleEntity articleEntity);
}
