import '../../Redux/appState.dart';
import 'ProfilePageAction.dart';

AppState ProfilePageReducer(AppState state, dynamic action) {
  if (action is ProfilePageActionInit) {
    print("ProfilePageActionInit");
    // state.homePageState.c++;
  }

  return state;
}
