import 'package:flutter_demo/architecture/redux/reducer.dart';
import 'package:redux/redux.dart';

class HomeState {}

typedef HomeReducerType = HomeState Function(HomeState state, dynamic action);

final homeReducer = combineReducers([
  HomeAction.reducer,
]);

class HomeAction {
  static HomeReducerType reduce = (state, action) {
    return state;
  };

  static final reducer = TypedReducer(reduce);
}
