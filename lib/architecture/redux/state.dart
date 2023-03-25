import 'package:flutter_demo/biz/home/redux/state.dart';

class AppState {
  BizAppState biz = BizAppState();
  HomeState home = HomeState();
}

class BizAppState {
  String name = '';
}
