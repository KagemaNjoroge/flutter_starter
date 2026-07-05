import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/providers/theme.dart';
import 'presentation/theme/theme.dart';
import 'router.dart';

final appShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'app shell');

class Application extends ConsumerWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme.copyWith(
        extensions: [AppThemeExtension.light],
      ),

      darkTheme: AppTheme.darkTheme.copyWith(
        extensions: [AppThemeExtension.dark],
      ),

      themeMode: themeMode,

      routerConfig: router,
    );
  }
}
