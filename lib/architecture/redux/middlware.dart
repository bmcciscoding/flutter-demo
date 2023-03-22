import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

final log = TypedMiddleware((store, action, next) {
  debugPrint(action.toString());
  next(action);
});
