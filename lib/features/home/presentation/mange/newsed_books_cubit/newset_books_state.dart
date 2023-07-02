// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'newset_books_cubit.dart';

@immutable
abstract class NewsetBooksState {}

class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;
  NewsetBooksSuccess(
    this.books,
  );
}

class NewsetBooksFailure extends NewsetBooksState {
  final String errMessage;
  NewsetBooksFailure(
    this.errMessage,
  );
}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksLoading extends NewsetBooksState {}
