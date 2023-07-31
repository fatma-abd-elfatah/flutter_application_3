import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Models/players/players.dart';
import '../../Repositories/player_repo.dart';

part 'player_detail_state.dart';

class PlayerDetailCubit extends Cubit<PlayerDetailState> {
  PlayerDetailCubit() : super(PlayerDetailLoading());
  getPlayers(teamId) {
    SportsAppRepo().getPlayerdetail(teamId).then((value) {
      if (value != null) {
        emit(PlayerDetailSuccess(ourResponse: value));
      } else {
        emit(PlayerDetailError());
      }
    });
  }

  Future<void> searchByPlayerName(String searchText) async {
    emit(PlayerDetailLoading());

    SportsAppRepo().searchByName(searchText).then((value) {
      if (value != null) {
        emit(PlayerDetailSuccess(ourResponse: value));
      } else {
        emit(PlayerDetailError());
      }
    });
  }
}
