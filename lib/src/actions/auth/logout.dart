part of auth_actions;

@freezed
abstract class Logout with _$Logout implements AppAction {
  const factory Logout() = LogoutStart;

  const factory Logout.successful() = LogoutSuccessful;

  const factory Logout.error(Object error, StackTrace stackTrace) = LogoutError;
}
