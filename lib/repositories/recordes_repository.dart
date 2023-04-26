// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_memory_game/constants.dart';
import 'package:flutter_memory_game/models/game_play.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';

part 'recordes_repository.g.dart';

class RecordesRepository = RecordesRepositoryBase with _$RecordesRepository;

abstract class RecordesRepositoryBase with Store {
  late final Box _recordes;
  late final GamePlay gamePlay;
  @observable
  Map recordesBrasileirao = {};
  @observable
  Map recordesNormal = {};

  RecordesRepositoryBase() {
    _initRepository();
  }

  _initRepository() async {
    await _initDatabase();
    await loadRecordes();
  }

  _initDatabase() async {
    _recordes = await Hive.openBox('gameRecordes3');
  }

  @action
  loadRecordes() {
    recordesNormal = _recordes.get(Modo.normal.toString()) ?? {};
    recordesBrasileirao = _recordes.get(Modo.brasileirao.toString()) ?? {};
  }

  updateRecordes({required GamePlay gamePlay, required int score}) {
    final key = gamePlay.modo.toString();

    if (gamePlay.modo == Modo.normal &&
        (recordesNormal[gamePlay.nivel] == null ||
            score < recordesNormal[gamePlay.nivel])) {
      recordesNormal[gamePlay.nivel] = score;
      _recordes.put(key, recordesNormal);
    } else if (gamePlay.modo == Modo.brasileirao &&
        (recordesBrasileirao[gamePlay.nivel] == null ||
            score > recordesBrasileirao[gamePlay.nivel])) {
      recordesBrasileirao[gamePlay.nivel] = score;
      _recordes.put(key, recordesBrasileirao);
    }
  }
}
