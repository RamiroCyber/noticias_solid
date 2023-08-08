import 'package:floor/floor.dart';
import 'package:flutter_solid/features/data/models/article.dart';

@dao
abstract class ArticleDao {

  @Insert()
  Future<void> insertArticle(ArticleModel articleModel);

  @delete
  Future<void> deleteArticle(ArticleModel articleModel);

  @Query('SELECT * FROM article')
  Future<List<ArticleModel>> getArticles();
}