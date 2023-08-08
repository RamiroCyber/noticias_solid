import 'package:floor/floor.dart';
import '../../models/article.dart';
import 'article_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';
part 'app_database.g.dart';

@Database(version: 1, entities: [ArticleModel])
abstract class AppDataBase extends FloorDatabase {
  ArticleDao get articleDAO;
}
