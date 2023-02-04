part of auth_actions;

@freezed
abstract class SignIn with _$SignIn implements AppAction {
  const factory SignIn({
    required String email,
    required String password,
    required ActionResponse response,
  }) = SignInStart;

  const factory SignIn.successful(AppUser user) = SignInSuccessful;

  const factory SignIn.error(Object error, StackTrace stackTrace) = SignInError;
}
