
import 'package:redux/redux.dart';
import '../Flow/HomePage/HomePageAction.dart';
import '../Flow/HomePage/HomePageReducer.dart';

import '../Flow/ProfilePage/ProfilePageAction.dart';
import '../Flow/ProfilePage/ProfilePageReducer.dart';
import 'appState.dart';

final appReducer = combineReducers<AppState>([
  TypedReducer<AppState, ProfilePageAction>(ProfilePageReducer),
  TypedReducer<AppState, HomePageAction>(HomePageReducer)
]);