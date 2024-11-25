part of 'newest_book_cubit.dart';

sealed class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

final class NewestBookInitial extends NewestBookState {}

final class NewestBookLoading extends NewestBookState {}

final class NewestBookFeilure extends NewestBookState {
  final String errMessage;

  const NewestBookFeilure({required this.errMessage});
}

final class NewestBookSuccrss extends NewestBookState {
  final List<BookModel> books;

  const NewestBookSuccrss({required this.books});
}
