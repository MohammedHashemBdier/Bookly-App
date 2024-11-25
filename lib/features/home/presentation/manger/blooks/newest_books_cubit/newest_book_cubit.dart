import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewstBooks() async {
    emit(
      NewestBookLoading(),
    );
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (faliure) {
        emit(
          NewestBookFeilure(
            errMessage: faliure.errMessage,
          ),
        );
      },
      (books) {
        emit(
          NewestBookSuccrss(
            books: books,
          ),
        );
      },
    );
  }
}
