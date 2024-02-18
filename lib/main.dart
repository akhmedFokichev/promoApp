import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'Redux/appReducer.dart';
import 'Redux/appRoutes.dart';
import 'Redux/appState.dart';

void main() {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState(),
  );

  runApp(_MyApp(store: store));
}

class _MyApp extends StatelessWidget {
  final Store<AppState> store;

  _MyApp({required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Redux Navigation Example',
        initialRoute: '/',
        routes: AppRoutes.routes,
      ),
    );
  }
}