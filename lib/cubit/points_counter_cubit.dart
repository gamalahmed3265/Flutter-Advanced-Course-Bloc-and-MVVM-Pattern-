import 'package:bloc/bloc.dart';

part 'points_counter_state.dart';

class PointsCounterCubit extends Cubit<PointsCounterState> {
  int incrmentA = 0;
  int incrmentB = 0;
  PointsCounterCubit() : super(PointsCounterStateAIncrement());

  void teamAIncrement(int buttonNumber) {
    incrmentA += buttonNumber;
    emit(PointsCounterStateAIncrement());
  }

  void teamBIncrement(int buttonNumber) {
    incrmentB += buttonNumber;
    emit(PointsCounterStateBIncrement());
  }
}
