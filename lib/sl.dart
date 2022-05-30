import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:petopt/features/auth/domain/usecase/create_user_with_email_and_password_usecase.dart';
import 'package:petopt/features/auth/presentation/controller/login/login_bloc.dart';
import 'package:petopt/features/auth/presentation/controller/register/register_bloc.dart';

import 'features/auth/data/data_source/data_source.dart';
import 'features/auth/data/repository/repository.dart';
import 'features/auth/domain/repository/auth_repository.dart';
import 'features/auth/domain/usecase/anonymous_sign_in_usecase.dart';
import 'features/auth/domain/usecase/get_current_user_usecase.dart';
import 'features/auth/domain/usecase/get_user_stream_usecase.dart';
import 'features/auth/domain/usecase/sign_in_with_email_password_usecase.dart';
import 'features/auth/domain/usecase/sign_in_with_google_usecase.dart';
import 'features/auth/presentation/controller/auth/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> setupSl() async {
  await _registerAuthSL();
}

Future<void> _registerAuthSL() async {
  /// controllers
  sl.registerFactory<AuthBloc>(
    () => AuthBloc(getCurrentUserUsecase: sl(), getUserStreamUsecase: sl()),
  );

  sl.registerFactory(
    () => LoginBloc(
        anonymousSignInUseCase: sl(),
        signInWithEmailPasswordUsecase: sl(),
        signInWithGoogleUseCase: sl()),
  );

  sl.registerFactory(() => RegisterBloc(sl()));

  /// usecases
  sl.registerLazySingleton<GetCurrentUserUsecase>(
    () => GetCurrentUserUsecase(sl()),
  );
  sl.registerLazySingleton<GetUserStreamUsecase>(
    () => GetUserStreamUsecase(sl()),
  );
  sl.registerLazySingleton<SignInWithEmailPasswordUsecase>(
    () => SignInWithEmailPasswordUsecase(sl()),
  );
  sl.registerLazySingleton<SignInWithGoogleUseCase>(
    () => SignInWithGoogleUseCase(sl()),
  );
  sl.registerLazySingleton<AnonymousSignInUseCase>(
    () => AnonymousSignInUseCase(sl()),
  );
  sl.registerLazySingleton<CreateUserWithEmailAndPasswordUseCase>(
    () => CreateUserWithEmailAndPasswordUseCase(sl()),
  );

  /// repositories
  sl.registerLazySingleton<IAuthRepository>(
    () => AuthRepository(sl()),
  );

  /// data sources
  sl.registerLazySingleton<IAuthDataSource>(() => AuthDataSource(
        firebaseAuth: FirebaseAuth.instance,
        firestore: FirebaseFirestore.instance,
        googleSignIn: GoogleSignIn.standard(),
      ));
}
