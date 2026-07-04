class AuthService {
  static Future<void> signIn(String username, String password) async {
     // TODO: implement sign in
    await Future<void>.delayed(const Duration(seconds: 3));
  }

  static Future<void> signOut() async {
     // TODO: implement sign out
    await Future<void>.delayed(const Duration(seconds: 3));
  }
}
