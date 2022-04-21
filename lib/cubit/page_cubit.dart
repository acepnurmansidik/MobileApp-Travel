import 'package:bloc/bloc.dart';

class PageCubit extends Cubit<int> {
  // 0 digunakan sebagai index dari halaman
  PageCubit() : super(0);

  // methode untuk melakakukan set
  void setPage(int newPage) {
    // mengubah state
    // * state dari cubit akan diantikan oleh newPage
    emit(newPage);
  }
}
