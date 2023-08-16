import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_solid/core/resources/data_state.dart';
import 'package:flutter_solid/features/domain/use_cases/get_article.dart';
import 'package:flutter_solid/features/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:flutter_solid/features/presentation/bloc/article/remote/remote_article_state.dart';

class RemoteArticlesBloc extends Bloc<RemoteArticlesEvent, RemoteArticleState> {
  final GetArticleUseCase _getArticleUseCase;

  RemoteArticlesBloc(this._getArticleUseCase)
      : super(const RemoteArticlesLoading()) {
    on<GetArticles>(onGetArticles);
  }

  void onGetArticles(
      GetArticles event, Emitter<RemoteArticleState> emit) async {
    final dataState = await _getArticleUseCase.call();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteArticlesLoaded(dataState.data!));
    }
    if (dataState is DataFailed && dataState.data!.isEmpty) {
      emit(RemoteArticlesError(dataState.error!));
    }
  }
}
