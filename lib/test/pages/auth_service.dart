class AuthService {
  // Fake API login
  Future<String?> login(String username, String password) async {
    if (username == "admin" && password == "123456") {
      return "TOKEN_ABC_123"; // fake token
    }
    return null;
  }
}
