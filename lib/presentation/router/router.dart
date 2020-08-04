import 'package:auto_route/auto_route_annotations.dart';
import 'package:kingof2odds/presentation/pages/sign_In/sign_in.dart';
import 'package:kingof2odds/presentation/pages/splash_screen/splash.dart';






@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute( page: SigninScreen, fullscreenDialog: true),
  ],
)
class $Router {}