part of auth_actions;

@freezed
abstract class SignUp with _$SignUp implements AppAction {
  const factory SignUp(ActionResponse response) = SignUpStart;

  const factory SignUp.successful(AppUser user) = SignUpSuccessful;

  const factory SignUp.error(Object error, StackTrace stackTrace) = SignUpError;
}
