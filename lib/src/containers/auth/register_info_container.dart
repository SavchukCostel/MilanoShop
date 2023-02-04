part of auth_container;

class RegisterInfoContainer extends StatelessWidget {
  const RegisterInfoContainer({super.key, required this.builder});

  final ViewModelBuilder<RegisterInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RegisterInfo>(
      converter: (Store<AppState> store) => store.state.auth.info!,
      builder: builder,
    );
  }
}
