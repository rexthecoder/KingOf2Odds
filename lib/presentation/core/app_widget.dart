import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingof2odds/application/auth/auth_bloc.dart';
import 'package:kingof2odds/infrastructure/assets/appcolors.dart';
import 'package:kingof2odds/injection.dart';
import 'package:kingof2odds/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
        title: 'King Of 2 Odds',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator(router: Router()),
        theme: ThemeData(
          primaryColor: AppColors.bg,
          accentColor: AppColors.bg,
          scaffoldBackgroundColor: AppColors.bg,
          secondaryHeaderColor: AppColors.bg,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
