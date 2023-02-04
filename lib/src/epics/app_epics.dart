import 'package:redux_epics/redux_epics.dart';

import '../data/auth_api.dart';
import '../models/index.dart';
import 'auth_epics.dart';

class AppEpics {
  const AppEpics({required AuthApi authApi})
      : assert(authApi != null),
        _authApi = authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
    ]);
  }
}
