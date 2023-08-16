import 'package:dio/dio.dart';
import 'package:flutter_solid/features/data/data_sources/local/app_database.dart';
import 'package:flutter_solid/features/data/data_sources/remote/news_api_service.dart';
import 'package:flutter_solid/features/data/repository/article_repository_impl.dart';
import 'package:flutter_solid/features/domain/repository/article_repository.dart';
import 'package:flutter_solid/features/domain/usecases/get_article.dart';
import 'package:flutter_solid/features/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  
  final database = await $FloorAppDataBase.databaseBuilder('app_database.db').build();
  getIt.registerSingleton<AppDataBase>(database);
  
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<NewsApiService>(NewsApiService(getIt()));

  getIt.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(getIt(),getIt()));

  getIt.registerSingleton<GetArticleUseCase>(GetArticleUseCase(getIt()));

  getIt.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(getIt()));
}
