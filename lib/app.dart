import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'core/providers/auth.dart';
import 'core/providers/theme.dart';
import 'presentation/pages/auth/sign_in.dart';
import 'presentation/pages/home.dart';
import 'presentation/pages/interstitial.dart';
import 'presentation/pages/settings.dart';
import 'presentation/theme/theme.dart';
import 'presentation/widgets/fade_transition_page.dart';

final appShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'app shell');

class Application extends ConsumerStatefulWidget {
  const Application({super.key});

  @override
  ConsumerState<Application> createState() => _ApplicationState();
}

class _ApplicationState extends ConsumerState<Application> {
  final ApplicationAuth auth = ApplicationAuth();

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp.router(
      builder: (context, child) {
        if (child == null) {
          throw ('No child in .router constructor builder');
        }
        return ApplicationAuthScope(notifier: auth, child: child);
      },
      theme: AppTheme.lightTheme.copyWith(
        extensions: [AppThemeExtension.light],
      ),

      darkTheme: AppTheme.darkTheme.copyWith(
        extensions: [AppThemeExtension.dark],
      ),
      themeMode: themeMode,
      routerConfig: GoRouter(
        initialLocation: '/interstitial',
        routes: [
          GoRoute(
            path: '/sign-in',
            builder: (context, state) {
              // Use a builder to get the correct BuildContext
              return Builder(
                builder: (context) {
                  return SignInScreen(
                    onSignIn: (value) async {
                      final router = GoRouter.of(context);
                      await ApplicationAuth.of(
                        context,
                      ).signIn(value.username, value.password);
                      router.go('/');
                    },
                  );
                },
              );
            },
          ),
          GoRoute(
            path: '/interstitial',
            builder: (context, state) => InterstitialPage(),
          ),
          ShellRoute(
            routes: [
              GoRoute(path: '/', builder: (context, state) => HomePage()),
              GoRoute(
                path: '/settings',
                builder: (context, state) => SettingsPage(),
              ),
            ],
            pageBuilder: (context, state, child) {
              return FadeTransitionPage(key: state.pageKey, child: child);
            },
          ),
        ],
        refreshListenable: auth,
        debugLogDiagnostics: true,
        redirect: (context, state) async {
          final signedIn = ApplicationAuth.of(context).signedIn;
          if (state.uri.toString() != '/sign-in' && !signedIn) {
            return '/sign-in';
          }
          return null;
        },
      ),
    );
  }
}
