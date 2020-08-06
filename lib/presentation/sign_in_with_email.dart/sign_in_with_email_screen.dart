import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingof2odds/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kingof2odds/infrastructure/assets/resuable.dart';
import 'package:kingof2odds/presentation/sign_in/widgets/sign_in_form.dart';

import '../../injection.dart';
import 'sigin_in_with_email_screen_form.dart';

class SignInWithEmailLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.center,
                child: Text("Welcome back",
                    textAlign: TextAlign.center, style: AppFont.header)),
            Container(
                alignment: Alignment.center,
                child: Text("Enter your email to sign in to your account",
                    textAlign: TextAlign.center, style: AppFont.body)),
            SignInWithEmailForm()
          ],
        )),
      ),
    );
  }
}
