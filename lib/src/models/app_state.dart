part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b.auth = AuthState.initialState().toBuilder();
    });
  }

  // ignore: cast_nullable_to_non_nullable
  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json) as AppState;

  AppState._();

  AuthState get auth;

  // ignore: cast_nullable_to_non_nullable
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
