import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String catygory}) async {
    emit(
      SimilarBooksLoading(),
    );
    var result = await homeRepo.fetchSimilarBooks(
      catygory: catygory,
    );
    result.fold(
      (faliure) {
        emit(
          SimilarBooksFielure(
            errMessage: faliure.errMessage,
          ),
        );
      },
      (books) {
        emit(
          SimilarBooksSuccess(
            books: books,
          ),
        );
      },
    );
  }
}
