import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import '../../../../domain/entities/article.dart';

abstract class RemoteArticleState extends Equatable {
  final List<ArticleEntity>? articles;
  final DioException? dioError;

  const RemoteArticleState({this.dioError, this.articles});

  @override
  List<Object> get props => [articles!, dioError!];
}

class RemoteArticlesLoading extends RemoteArticleState {
  const RemoteArticlesLoading();
}

class RemoteArticlesLoaded extends RemoteArticleState {
  const RemoteArticlesLoaded(List<ArticleEntity> article)
      : super(articles: article);
}

class RemoteArticlesError extends RemoteArticleState {
  const RemoteArticlesError(DioException dioError) : super(dioError: dioError);
}
