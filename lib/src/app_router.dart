// ignore_for_file: prefer_const_literals_to_create_immutables, unused_import

import 'package:go_router/go_router.dart';
import 'package:labbaika/src/features/home/presentation/botnavbar_screen.dart';
import 'package:labbaika/src/features/home/presentation/home_screen.dart';
import 'package:labbaika/src/features/profile/presentation/profile_screen.dart';
import 'package:labbaika/src/features/auth/presentation/sign_in_screen.dart';
import 'package:labbaika/src/features/starter/presentation/splash_screen.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: SplashScreen.routeName,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SplashScreen(),
      ),
    ),
    GoRoute(
      path: '/signin-screen',
      name: SignInScreen.routeName,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SignInScreen(),
      ),
    ),
    GoRoute(
        path: '/home-screen',
        name: HomeScreen.routeName,
        pageBuilder: (context, state) => NoTransitionPage<void>(
              key: state.pageKey,
              child: const HomeScreen(),
            ),
        routes: []),
    GoRoute(
        path: '/botnavbar-screen',
        name: BotNavBarScreen.routeName,
        pageBuilder: (context, state) => NoTransitionPage<void>(
              key: state.pageKey,
              child: const BotNavBarScreen(),
            ),
        routes: []),
    GoRoute(
      path: '/profile-screen',
      name: ProfileScreen.routeName,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const ProfileScreen(),
      ),
      routes: [],
    ),
  ],
);
