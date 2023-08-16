import 'package:flutter_solid/core/usecase/usecase.dart';
import 'package:flutter_solid/features/domain/repository/article_repository.dart';
import '../entities/article.dart';

class InsertArticleDatabaseUseCase implements UseCase<void, ArticleEntity> {
  final ArticleRepository _articleRepository;

  InsertArticleDatabaseUseCase(this._articleRepository);

  @override
  Future<void> call({ArticleEntity? prams}) {
    return _articleRepository.saveArticle(prams!);
  }
}
