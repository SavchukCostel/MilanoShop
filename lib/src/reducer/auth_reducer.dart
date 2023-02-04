import 'package:redux/redux.dart';

import '../actions/auth/index.dart';
import '../models/index.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, SignInStart>(_loginStart),
  TypedReducer<AuthState, SignInSuccessful>(_signInSuccessful),
  TypedReducer<AuthState, SignInError>(_signInError),
  TypedReducer<AuthState, SignUpStart>(_registerStart),
  TypedReducer<AuthState, SignUpSuccessful>(_signUpSuccessful),
  TypedReducer<AuthState, UpdateRegisterInfo>(_updateRegisterInfo),
  TypedReducer<AuthState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AuthState, LogoutSuccessful>(_logoutSuccessful),
]);

AuthState _loginStart(AuthState state, SignInStart action) {
  return state.rebuild((AuthStateBuilder b) => b.isLoading = true);
}

AuthState _signInSuccessful(AuthState state, SignInSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b
      ..isLoading = false
      ..user = action.user.toBuilder();
  });
}

AuthState _signInError(AuthState state, SignInError action) {
  return state.rebuild((AuthStateBuilder b) => b.isLoading = false);
}

AuthState _registerStart(AuthState state, SignUpStart action) {
  return state.rebuild((AuthStateBuilder b) => b.isLoading = true);
}

AuthState _signUpSuccessful(AuthState state, SignUpSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b
      ..isLoading = false
      ..user = action.user.toBuilder();
  });
}

AuthState _updateRegisterInfo(AuthState state, UpdateRegisterInfo action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.email != null) {
      b.info.email = action.email;
    }
    else if (action.password != null) {
      b.info.pass = action.password;
    }
    else if (action.displayName != null) {
      b.info.displayName = action.displayName;
    }
    else if (action.photoUrl != null) {
      b.info.photoUrl = action.photoUrl;
    }
    else {
      b.info = RegisterInfo().toBuilder();
    }
  });
}

AuthState _initializeAppSuccessful(AuthState state, InitializeAppSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}

AuthState _logoutSuccessful(AuthState state, LogoutSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = null);
}
