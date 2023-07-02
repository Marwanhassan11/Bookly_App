part of 'feature_books_cubit.dart';

@immutable
abstract class FeatureBooksState {}

class FeatureBooksInitial extends FeatureBooksState {}

class FeatureBooksLoading extends FeatureBooksState {}

class FeatureBooksFailure extends FeatureBooksState {
  final String errorMessage;

  FeatureBooksFailure(this.errorMessage);
}

class FeatureBooksSuccess extends FeatureBooksState {
  final List<BookModel> books;

  FeatureBooksSuccess(this.books);
}
