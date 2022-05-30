import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:petopt/app.dart';

import 'features/auth/presentation/controller/auth/auth_bloc.dart';
import 'firebase_options.dart';
import 'sl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await setupSl();

  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  // await FirebaseAuth.instance.signOut();

  EquatableConfig.stringify = true;
  BlocOverrides.runZoned(
    () {
      runApp(MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<AuthBloc>()..add(const AuthEvent.started()),
          ),
        ],
        child: Petopt(),
      ));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyBlocObserver extends BlocObserver {}
