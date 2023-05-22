import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/presentation/auth/sign_in/state/sign_in_form_state.dart';
import 'package:koru/presentation/auth/registration/registration_page.dart';
import 'package:koru/presentation/auth/sign_in/sign_in_form.dart';
import 'package:koru/presentation/misc/loading_overlay.dart';
import 'package:koru/presentation/misc/snackbar.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(children: [
            const StateListener(),
            const SizedBox(
              height: 80.0,
            ),
            Image.asset(
              'koru.png',
              height: 120,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'KORU',
              style: Theme.of(context).textTheme.displaySmall!,
              textAlign: TextAlign.center,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SignInForm(),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegistrationPage(),
                  ),
                ),
                child: const Text('Create an account'),
              ),
            )
          ]),
          LoadingOverlay(
            loadingState: signInFormStateProvider.select(
              (value) => value.isSubmitting,
            ),
          ),
        ],
      ),
    );
  }
}

class StateListener extends ConsumerStatefulWidget {
  const StateListener({Key? key}) : super(key: key);

  @override
  StateListenerState createState() {
    return StateListenerState();
  }
}

class StateListenerState extends ConsumerState<StateListener> {
  @override
  void initState() {
    super.initState();
    final sessionTimeout = ref.read(koruState).sessionTimeout;
    if (sessionTimeout) {
      scheduleMicrotask(
        () => showErrorSnackBar(
          context,
          'Your session timed-out, Please log in again.',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
