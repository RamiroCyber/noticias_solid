import 'package:flutter_solid/core/resources/data_state.dart';
import 'package:flutter_solid/core/usecase/usecase.dart';
import 'package:flutter_solid/features/domain/repository/article_repository.dart';
import '../entities/article.dart';

class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>, void> {

  late final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void prams}) {
   return _articleRepository.getNewsArticles();
  }


}