import 'package:bloc/bloc.dart';

part 'points_counter_state.dart';

enum PointsCatogryStstus { A, B }

class PointsCounterCubit extends Cubit<PointsCounterState> {
  int incrmentA = 0;
  int incrmentB = 0;
  PointsCounterCubit() : super(PointsCounterStateAIncrement());

  void teamIncrement(PointsCatogryStstus catgaory, int buttonNumber) {
    switch (catgaory) {
      case PointsCatogryStstus.A:
        incrmentA += buttonNumber;
        emit(PointsCounterStateAIncrement());

        break;
      case PointsCatogryStstus.B:
        incrmentB += buttonNumber;
        emit(PointsCounterStateBIncrement());
        break;
    }
  }

  void clear() {
    incrmentA = 0;
    incrmentB = 0;
    emit(PointsCounterStateAIncrement());
    emit(PointsCounterStateBIncrement());
  }
}
