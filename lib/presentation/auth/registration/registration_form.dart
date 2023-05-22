import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/domain/auth/usecase/register.dart';
import 'package:koru/presentation/auth/registration/state/registration_form_state.dart';
import 'package:koru/presentation/misc/result_listener.dart';

class RegistrationForm extends ConsumerStatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  RegistrationFormWidgetState createState() {
    return RegistrationFormWidgetState();
  }
}

class RegistrationFormWidgetState extends ConsumerState<RegistrationForm> {
  @override
  void initState() {
    super.initState();
    state();
  }

  RegistrationFormState state() => ref.read(registrationFormStateProvider);

  @override
  Widget build(BuildContext context) {
    listenForResult(
        context,
        ref,
        registrationFormStateProvider
            .select((value) => value.registrationResult),
        (r) => Navigator.of(context).pop(),
        (f) => f.errorMessage());
    final formKey = GlobalKey<FormState>();
    final notifier = ref.read(registrationFormStateProvider.notifier);
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: 'Enter your user name',
              labelText: 'User name',
            ),
            onChanged: (value) => notifier.userNameChanged(value),
            validator: (_) => state().userName.fold(
                  (f) => f.maybeMap(
                    orElse: () => null,
                    shortName: (_) => 'Name is too short',
                    longName: (_) => 'Name is too long',
                  ),
                  (r) => null,
                ),
          ),
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
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Confirm your password',
              labelText: 'Confirm password',
            ),
            obscureText: true,
            onChanged: (value) => notifier.confirmPasswordChanged(value),
            validator: (_) => state().confirmPassword.fold(
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
                notifier.registrationRequested();
              }
            },
            child: const Text("Register"),
          )
        ],
      ),
    );
  }
}
