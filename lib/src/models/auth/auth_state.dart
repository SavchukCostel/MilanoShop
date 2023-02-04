part of auth_models;

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState.initialState() {
    return _$AuthState((AuthStateBuilder b) => b.isLoading = false);
  }
  // ignore: cast_nullable_to_non_nullable
  factory AuthState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json) as AuthState;

  AuthState._();

  AppUser? get user;

  RegisterInfo? get info;

  bool get isLoading;

  // ignore: cast_nullable_to_non_nullable
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
