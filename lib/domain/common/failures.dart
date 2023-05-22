import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class InputDataFailure with _$InputDataFailure {
  const factory InputDataFailure.invalidEmail({
    required String invalidEmail,
  }) = InvalidEmail;
  const factory InputDataFailure.emptyEmail() = EmptyEmail;
  const factory InputDataFailure.shortPassword() = ShortPassword;

  const factory InputDataFailure.shortName() = ShortName;

  const factory InputDataFailure.longName() = LongName;

  const factory InputDataFailure.passwordsDoNotMatch() = PasswordsDoNotMatch;

  const factory InputDataFailure.emptyGroupName() = EmptyGroupName;

  const factory InputDataFailure.emptyGroupToken() = EmptyGroupToken;

  const factory InputDataFailure.emptyAmount() = EmptyAmount;

  const factory InputDataFailure.invalidAmount() = InvalidAmount;

  const factory InputDataFailure.invalidAmountFormat() = InvalidAmountFormat;

  const factory InputDataFailure.emptyExpenseDescription() =
      EmptyExpenseDescription;

  const factory InputDataFailure.invalidColor() = InvalidColor;
}

extension InputDataFailureX on InputDataFailure {
  String errorMessage() {
    return when(
      invalidEmail: (_) => 'Invalid email.',
      emptyEmail: () => 'Email cannot be empty.',
      shortPassword: () => 'Password is too short.',
      shortName: () => 'Username is too short.',
      longName: () => 'Username is too long.',
      passwordsDoNotMatch: () => 'Passwords do not match.',
      emptyGroupName: () => 'Group name cannot be empty.',
      emptyAmount: () => 'Amount cannot be empty',
      invalidAmount: () => 'Amount should be more than 0',
      invalidAmountFormat: () => 'Amount should be a number',
      emptyExpenseDescription: () => 'Description cannot be empty',
      emptyGroupToken: () => 'Token cannot be empty',
      invalidColor: () => 'Color is not valid',
    );
  }
}
