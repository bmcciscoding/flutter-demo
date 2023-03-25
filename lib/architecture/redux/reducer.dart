// ignore_for_file: non_constant_identifier_names

import 'package:flutter_demo/architecture/redux/state.dart';
import 'package:flutter_demo/biz/home/redux/state.dart';
import 'package:redux/redux.dart';


final AppReducer = TypedReducer<AppState, dynamic>((state, action) {
  state.home = homeReducer(state.home, action);
  // add more reducer
  return state;
});

