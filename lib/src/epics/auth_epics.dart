import 'package:redux_epics/redux_epics.dart';

// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../models/index.dart';

class AuthEpics {
  const AuthEpics({required AuthApi api})
      : assert(api != null),
        _api = api;

  final AuthApi _api;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, SignInStart>(_signIn),
      TypedEpic<AppState, SignUpStart>(_signUp),
      TypedEpic<AppState, InitializeAppStart>(_initializeApp),
      TypedEpic<AppState, LogoutStart>(_logout),
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeAppStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((InitializeAppStart action) => Stream<InitializeAppStart>.value(action)
        .asyncMap((InitializeAppStart action) => _api.initializeApp())
        .expand((AppUser? user) => <AppAction>[InitializeApp.successful(user)])
        .onErrorReturnWith((Object error, StackTrace t) => InitializeApp.error(error, t)));
  }

  Stream<AppAction> _signIn(Stream<SignInStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SignInStart action) => Stream<SignInStart>.value(action)
        .asyncMap((SignInStart action) => _api.login(email: action.email, password: action.password))
        .expand((AppUser user) => <AppAction>[SignIn.successful(user)])
        .onErrorReturnWith((Object error, StackTrace t) => SignIn.error(error, t))
        .doOnData(action.response));
  }

  Stream<AppAction> _signUp(Stream<SignUpStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SignUpStart action) => Stream<SignUpStart>.value(action)
        .asyncMap((SignUpStart action) => _api.register(
            email: store.state.auth.info!.email,
            password: store.state.auth.info!.pass,
            displayName: store.state.auth.info!.displayName,
            photoUrl: store.state.auth.info!.photoUrl ?? 'avatar_user.jpg'
            // displayName: store.state.auth.info.displayName ?? store.state.auth.info.email!.split('@')[0],
            ))
        .expand((AppUser user) => <AppAction>[SignUp.successful(user)])
        .onErrorReturnWith((Object error, StackTrace t) => SignUp.error(error, t))
        .doOnData(action.response));
  }

  Stream<AppAction> _logout(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart action) => Stream<LogoutStart>.value(action)
        .asyncMap((LogoutStart action) => _api.logout())
        .map((_) => const Logout.successful())
        .onErrorReturnWith((Object error, StackTrace t) => Logout.error(error, t)));
  }
}
