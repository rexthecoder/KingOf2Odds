import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingof2odds/application/auth/auth_bloc.dart';
import 'package:kingof2odds/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kingof2odds/presentation/routes/router.gr.dart';

class SignInWithEmailForm extends StatelessWidget {
  const SignInWithEmailForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (_) {
              ExtendedNavigator.of(context).push(Routes.signInWithEmailLogIn);
              context
                  .bloc<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: true,
          child: Container(
            child: Column(
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                  validator: (_) => context
                      .bloc<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
