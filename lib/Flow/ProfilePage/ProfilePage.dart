
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../Redux/appState.dart';
import '../HomePage/HomePage.dart';

class ProfilePageState {

}

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomePageState>(
      converter: (store) {
        return store.state.homePageState;
      },
      builder: (context, state) {
        return Scaffold(
          appBar: _appBar(context, state),
          body: _body(context, state),
        );
      },
    );
  }

  _appBar(BuildContext context, HomePageState state) {
    return AppBar(
        title: Text("AppBar Profile")
    );
  }

  _body(BuildContext context, HomePageState state) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ProfilePage",
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            ),

            SizedBox(height: 64),

            CupertinoButton.filled(
              onPressed: () {
                _tap(context);
              },
              child: Text("Далее"),
            ),

          ],
        ),
      ),
    );
  }

  _tap(BuildContext context) {
      print("profile _tap");
  }
}