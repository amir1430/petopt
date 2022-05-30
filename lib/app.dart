import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petopt/core/router.dart';
import 'package:petopt/features/auth/presentation/controller/auth/auth_bloc.dart';

class Petopt extends StatelessWidget {
  Petopt({Key? key}) : super(key: key);

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthBloc>();
    final router = appRouter.router(authBloc);
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'Petopt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
