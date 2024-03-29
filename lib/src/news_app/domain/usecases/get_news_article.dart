import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/core/usecase/usecase.dart';
import 'package:news_app/src/news_app/domain/entity/news_article.dart';
import 'package:news_app/src/news_app/domain/repositories/news_article_repository.dart';

class GetNewsArticle implements UseCase<List<NewsArticle?>, NoParams> {
  final NewsArticleRepository repository;
  GetNewsArticle(this.repository);

  @override
  Future<Either<Failure, List<NewsArticle?>>> call(NoParams params) {
    return repository.getArticles();
  }
}
