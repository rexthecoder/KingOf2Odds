import 'package:flutter/material.dart';


class SignInWithEmailForm extends StatelessWidget {
  const SignInWithEmailForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Form(
          autovalidate: true,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    alignLabelWithHint: true,
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0.0),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0.0),
                    ),
                  ),
                  autocorrect: false,
                 
                ),
              ],
            ),
          ),
        );

  }
}
