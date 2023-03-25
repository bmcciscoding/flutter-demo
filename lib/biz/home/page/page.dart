import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/architecture/redux/state.dart';
import 'package:flutter_demo/architecture/widget/wdiget_ext.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();

  static get route {
    return MaterialPageRoute(builder: (context) {
      return const HomePage();
    });
  }
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  _gotoNextPage(BuildContext ctx) {
    // Navigator.push(
    //   ctx,
    //   MaterialPageRoute(
    //     builder: (ctx) => const HomePage(),
    //   ),
    // );
    _count += 1;
    Navigator.pushNamed(
      ctx,
      HomePage.routeName,
      arguments: {'count': _count},
    );
  }

  Map? _getMapFromCtx(BuildContext ctx) {
    Object? args = ModalRoute.of(ctx)?.settings.arguments;
    if (args is Map) {
      return args;
    }
    return {};
  }

  @override
  Widget build(BuildContext context) {
    Map args = _getMapFromCtx(context) ?? {};
    _count = args['count'] ?? _count;
    return StoreConnector<AppState, String>(
      converter: (store) => store.state.home.toString(),
      builder: (context, vm) {
        return Scaffold(
          appBar: AppBar(
            title: Text("New route $vm"),
          ),
          body: Center(
            child: Column(
              children: [
                Text("This is new route $_count")
                    .bgColor(Colors.red)
                    .margin(const EdgeInsets.all(20)),
                CupertinoButton(
                  child: const Text('button'),
                  onPressed: () => _gotoNextPage(context),
                )
                    .bgColor(Colors.blueGrey)
                    .padding(const EdgeInsets.all(0))
              ],
            ).bgColor(Colors.black54),
          ),
        );
      },
    );
  }
}
