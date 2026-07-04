import 'package:flutter/widgets.dart';
import 'package:flutter_starter/core/services/auth_service.dart';

class ApplicationAuth extends ChangeNotifier {
  bool _signedIn = false;

  @override
  int get hashCode => _signedIn.hashCode;

  bool get signedIn => _signedIn;

  @override
  bool operator ==(Object other) =>
      other is ApplicationAuth && other._signedIn == _signedIn;

  Future<bool> signIn(String username, String password) async {
    await AuthService.signIn(username, password);
    _signedIn = true;
    notifyListeners();
    return _signedIn;
  }

  Future<void> signOut() async {
    await AuthService.signOut();
    _signedIn = false;
    notifyListeners();
  }

  static ApplicationAuth of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<ApplicationAuthScope>()!
      .notifier!;
}

class ApplicationAuthScope extends InheritedNotifier<ApplicationAuth> {
  const ApplicationAuthScope({
    required super.notifier,
    required super.child,
    super.key,
  });
}
