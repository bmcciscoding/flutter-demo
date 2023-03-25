import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/architecture/redux/state.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  static get route {
    return MaterialPageRoute(builder: (context) {
      return const HomePage();
    });
  }
}

class _HomePageState extends State<HomePage> {
  _gotoNextPage(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (ctx) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (store) => store.state.home.toString(),
      builder: (context, vm) {
        return Scaffold(
          appBar: AppBar(
            title: Text("New route $vm"),
          ),
          body: Center(
              child: Row(
            children: [
              const Text("This is new route"),
              CupertinoButton(
                  child: const Text('button'),
                  onPressed: () => _gotoNextPage(context))
            ],
          )),
        );
      },
    );
  }
}
