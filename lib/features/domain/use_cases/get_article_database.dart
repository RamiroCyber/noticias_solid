import 'package:flutter_solid/core/use_case/use_case.dart';
import 'package:flutter_solid/features/domain/repository/article_repository.dart';
import '../entities/article.dart';

class GetArticleDatabaseUseCase implements UseCase<List<ArticleEntity>, void> {

  final ArticleRepository _articleRepository;

  GetArticleDatabaseUseCase(this._articleRepository);
  @override
  Future<List<ArticleEntity>> call({void prams}) {
    return _articleRepository.getSavedArticles();
  }

}