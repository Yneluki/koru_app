import 'package:flutter/material.dart';
import 'package:koru/presentation/auth/registration/state/registration_form_state.dart';
import 'package:koru/presentation/auth/registration/registration_form.dart';
import 'package:koru/presentation/misc/loading_overlay.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account Registration')),
      body: Stack(
        children: [
          ListView(children: [
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              'koru.png',
              height: 120,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Center(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: RegistrationForm(),
            )),
          ]),
          LoadingOverlay(
            loadingState: registrationFormStateProvider.select(
              (value) => value.isSubmitting,
            ),
          ),
        ],
      ),
    );
  }
}
