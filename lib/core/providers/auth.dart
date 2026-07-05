import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/auth_service.dart';

final authProvider = NotifierProvider<AuthNotifier, bool>(AuthNotifier.new);

final routerRefreshProvider = Provider<RouterRefreshNotifier>((ref) {
  return RouterRefreshNotifier(ref);
});
class AuthNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  Future<bool> signIn(String username, String password) async {
    await AuthService.signIn(username, password);

    state = true;
    return state;
  }

  Future<void> signOut() async {
    await AuthService.signOut();

    state = false;
  }
}

class RouterRefreshNotifier extends ChangeNotifier {
  final Ref ref;

  RouterRefreshNotifier(this.ref) {
    ref.listen<bool>(authProvider, (_, _) {
      notifyListeners();
    });
  }
}
