import 'package:go_router/go_router.dart';
import 'package:jawadrahimi_contact_app/test/pages/home.dart';
import 'package:jawadrahimi_contact_app/test/pages/login.dart';
import 'package:jawadrahimi_contact_app/test/pages/verifiy_page.dart';

class AppRouter {
  static GoRouter router(String startPage) {
    return GoRouter(
      initialLocation: startPage,
      routes: [
        // GoRoute(path: '/', builder: (_, __) => LoginPage()),
        GoRoute(
          path: '/verify',
          builder: (_, state) {
            final username = state.extra as String;
            return VerifyPage(username: username);
          },
        ),
        // GoRoute(
        //   path: '/home',
        //   builder: (_, state) {
        //     final username = state.extra as String? ?? "";
        //     // return HomePage(username: username);
        //   },
        // ),
      ],
    );
  }
}
