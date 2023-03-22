// ignore_for_file: non_constant_identifier_names

import 'package:flutter_demo/architecture/redux/state.dart';
import 'package:redux/redux.dart';

typedef AppReducerType = AppState Function(AppState state, dynamic action);

final AppReducer = combineReducers([
  new TypedReducer<AppState, BizAction>(BizAction.reducer),
]);

class BizAction {
  int p1 = 0;
  String p2 = '';

  static AppReducerType reducer = (state, action) {
    // handle action
    return state;
  };
}
