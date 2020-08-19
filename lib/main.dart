import 'package:auth_widget_builder/auth_widget_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kingof2odds/app/registration/sign_up.dart';


import 'package:provider/provider.dart';

import 'package:firebase_auth_service/firebase_auth_service.dart';


import 'app/splash/splash_page.dart';
import 'constants/assets/appcolors.dart';



void main() => runApp(MyApp(
      authServiceBuilder: (_) => FirebaseAuthService(),
      // databaseBuilder: (_, uid) => FirestoreDatabase(uid: uid),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key key, this.authServiceBuilder}) : super(key: key);
  // Expose builders for 3rd party services at the root of the widget tree
  // This is useful when mocking services while testing
  final FirebaseAuthService Function(BuildContext context) authServiceBuilder;

  @override
  Widget build(BuildContext context) {
    // MultiProvider for top-level services that don't depend on any runtime values (e.g. uid)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.bg,
    ));
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthService>(
          create: authServiceBuilder,
        ),
      ],
      child: AuthWidgetBuilder(
        userProvidersBuilder: (_, user) => [
          Provider<User>.value(value: user),
        ],
        builder: (context, userSnapshot) {
          return MaterialApp(
            theme: ThemeData(primarySwatch: Colors.indigo),
            debugShowCheckedModeBanner: false,
            home: AuthWidget(
              userSnapshot: userSnapshot,
              nonSignedInBuilder: (_) =>  SplashPage(),
              signedInBuilder: (_) => SignUpScreen(),
            ),
            // onGenerateRoute: Router.onGenerateRoute,
          );
        },
      ),
    );
  }
}
