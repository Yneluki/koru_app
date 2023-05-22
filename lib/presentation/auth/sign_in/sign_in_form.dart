import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/domain/auth/usecase/sign_in.dart';
import 'package:koru/presentation/auth/sign_in/state/sign_in_form_state.dart';
import 'package:koru/presentation/misc/result_listener.dart';
import 'package:koru/presentation/splash_screen.dart';

class SignInForm extends ConsumerStatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  SignInFormWidgetState createState() {
    return SignInFormWidgetState();
  }
}

class SignInFormWidgetState extends ConsumerState<SignInForm> {
  @override
  void initState() {
    super.initState();
    state();
  }

  SignInFormState state() => ref.read(signInFormStateProvider);

  @override
  Widget build(BuildContext context) {
    listenForResult(
        context,
        ref,
        signInFormStateProvider.select((value) => value.signInResult),
        (r) => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const SplashScreen(),
              ),
            ),
        (f) => f.errorMessage());
    final formKey = GlobalKey<FormState>();
    final notifier = ref.read(signInFormStateProvider.notifier);
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: 'Enter your email',
              labelText: 'Email',
            ),
            autocorrect: false,
            onChanged: (value) => notifier.emailChanged(value),
            validator: (_) => state().emailAddress.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    emptyEmail: (_) => 'Email cannot be empty',
                    invalidEmail: (_) => 'Invalid email',
                  ),
                  (r) => null,
                ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Enter your password',
              labelText: 'Password',
            ),
            obscureText: true,
            onChanged: (value) => notifier.passwordChanged(value),
            validator: (_) => state().password.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    shortPassword: (_) => 'Password is too short',
                  ),
                  (r) => null,
                ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              final res = formKey.currentState!.validate();
              if (res) {
                notifier.signInRequested();
              }
            },
            child: const Text("Sign In"),
          )
        ],
      ),
    );
  }
}
