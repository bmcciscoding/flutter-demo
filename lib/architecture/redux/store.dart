import 'package:flutter_demo/architecture/redux/middlware.dart';
import 'package:flutter_demo/architecture/redux/state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'reducer.dart';

final store = Store<AppState>(
  AppReducer,
  initialState: AppState(),
  middleware: [
    log,
  ],
);
