import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/auth/presentation/controller/auth/auth_bloc.dart';

import '../features/auth/presentation/screens/login_screen.dart';
import '../features/auth/presentation/screens/register_screen.dart';

class AppRouter {
  GoRouter router(AuthBloc bloc) => GoRouter(
        refreshListenable: GoRouterRefreshStream(bloc.stream),
        redirect: (state) {
          final isGoingToAuth =
              state.subloc == '/login' || state.subloc == '/register';
          return bloc.state.when(
            unknown: () => null,
            authenticated: (_) => !isGoingToAuth ? null : '/',
            unAuthenticated: () => isGoingToAuth ? null : '/login',
          );
        },
        routes: [
          GoRoute(
            path: '/',
            name: 'home',
            builder: (c, s) {
              return Scaffold(
                body: bloc.state.maybeWhen(
                  orElse: () => const Text('data'),
                  authenticated: (user) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(user.username),
                        if (user.profilePicture != null)
                          Image.network(user.profilePicture!),
                        TextButton(
                            onPressed: () async {
                              await FirebaseAuth.instance.signOut();
                            },
                            child: const Text('logout'))
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          GoRoute(
            path: '/login',
            name: 'login',
            builder: (c, s) {
              return const LoginScreen();
            },
          ),
          GoRoute(
            path: '/register',
            name: 'register',
            builder: (c, s) {
              return const RegisterScreen();
            },
          ),
        ],
      );
}
