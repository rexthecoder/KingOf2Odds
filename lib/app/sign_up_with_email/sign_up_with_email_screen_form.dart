import 'package:flutter/material.dart';

class SignUpWithEmailForm extends StatelessWidget {
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
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Colors.white54,
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 0.0),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 0.0),
                ),
              ),
              autocorrect: false,
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                alignLabelWithHint: true,
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.white54,
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 0.0),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 0.0),
                ),
              ),
              autocorrect: false,
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password (8+ characters)',
                labelStyle: TextStyle(
                  color: Colors.white54,
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 0.0),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 0.0),
                ),
              ),
              autocorrect: false,
              obscureText: true,
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
