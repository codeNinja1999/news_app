import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/src/news_app/domain/entity/news_article.dart';

abstract class NewsArticleRepository {
  Future<Either<Failure, List<NewsArticle?>>> getArticles();

  Future<Either<Failure, List<NewsArticle?>>> getConcreteArticles(
      String category);
}
