import 'package:flutter_solid/features/domain/entities/article.dart';
import '../../../core/resources/data_state.dart';

abstract class ArticleRepository {

  Future<DataState<List<ArticleEntity>>> getNewsArticles();

}