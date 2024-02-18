import '../../Redux/appState.dart';
import 'HomePageAction.dart';

AppState HomePageReducer(AppState state, dynamic action) {

  if (action is HomePageActionInit) {
    print("HomePageActionInit");
  }

  return state;
}
