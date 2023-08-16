import 'package:flutter_solid/core/resources/data_state.dart';
import 'package:flutter_solid/core/use_case/use_case.dart';
import 'package:flutter_solid/features/domain/repository/article_repository.dart';
import '../entities/article.dart';

class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>, void> {

  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void prams}) {
   return _articleRepository.getNewsArticles();
  }


}