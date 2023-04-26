// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recordes_repository.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RecordesRepository on RecordesRepositoryBase, Store {
  final _$recordesBrasileiraoAtom =
      Atom(name: 'RecordesRepositoryBase.recordesRound6');

  @override
  Map<dynamic, dynamic> get recordesBrasileirao {
    _$recordesBrasileiraoAtom.reportRead();
    return super.recordesBrasileirao;
  }

  @override
  set recordesBrasileirao(Map<dynamic, dynamic> value) {
    _$recordesBrasileiraoAtom.reportWrite(value, super.recordesBrasileirao, () {
      super.recordesBrasileirao = value;
    });
  }

  final _$recordesNormalAtom =
      Atom(name: 'RecordesRepositoryBase.recordesNormal');

  @override
  Map<dynamic, dynamic> get recordesNormal {
    _$recordesNormalAtom.reportRead();
    return super.recordesNormal;
  }

  @override
  set recordesNormal(Map<dynamic, dynamic> value) {
    _$recordesNormalAtom.reportWrite(value, super.recordesNormal, () {
      super.recordesNormal = value;
    });
  }

  final _$RecordesRepositoryBaseActionController =
      ActionController(name: 'RecordesRepositoryBase');

  @override
  dynamic loadRecordes() {
    final $actionInfo = _$RecordesRepositoryBaseActionController.startAction(
        name: 'RecordesRepositoryBase.loadRecordes');
    try {
      return super.loadRecordes();
    } finally {
      _$RecordesRepositoryBaseActionController.endAction($actionInfo);
    }
  }

  @override
  String toString() {
    return '''
recordesBrasileirao: ${recordesBrasileirao},
recordesNormal: ${recordesNormal}
    ''';
  }
}
