import 'package:flutter_bloc/flutter_bloc.dart';

part 'world_clocks_state.dart';

class WorldClocksCubit extends Cubit<WorldClocksState> {
  WorldClocksCubit() : super(WorldClocksInitial());
}
