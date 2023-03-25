import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/architecture/redux/state.dart';
import 'package:flutter_demo/biz/home/page/page.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class FlutterReduxApp extends StatelessWidget {
  final Store<AppState> store;
  final String title;

  const FlutterReduxApp({
    Key? key,
    required this.store,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        routes: routes,
        theme: ThemeData.dark(),
        title: title,
        home: const Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}

final routes = <String, Widget Function(BuildContext ctx)>{
  HomePage.routeName: (ctx) => const HomePage()
};
