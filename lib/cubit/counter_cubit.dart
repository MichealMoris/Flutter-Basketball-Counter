import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(TeamACounterState());

  int teamA = 0;
  int teamB = 0;

  void teamAIncrement(int point) {
    teamA += point;
    emit(TeamACounterState());
  }

  void teamBIncrement(int point) {
    teamB += point;
    emit(TeamBCounterState());
  }

  void reset() {
    teamA = 0;
    teamB = 0;
    emit(ResetCounterState());
  }
}
