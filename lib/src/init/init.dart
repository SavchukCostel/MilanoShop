import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import '../actions/auth/index.dart';
import '../data/auth_api.dart';
import '../epics/app_epics.dart';
import '../models/index.dart';
import '../reducer/reducer.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDCg8NMPinwYf5xmKUtPUfHc59TrlCn8bs',
      appId: '1:448917778508:web:94c111428b5eeca83e84e9',
      messagingSenderId: '448917778508',
      projectId: 'milano-app-281a0',
      storageBucket: 'milano-app-281a0.appspot.com',
    ),
  );

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  final AuthApi authApi = AuthApi(auth: auth, firestore: firestore, firebaseStorage: firebaseStorage);

  final AppEpics epics = AppEpics(authApi: authApi);
  final AppState initialState = AppState.initialState();

  return Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epics),
    ],
  )
    ..dispatch(const InitializeApp());
}
