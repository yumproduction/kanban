import 'package:formz/formz.dart';

enum PhoneNumberValidationError { empty, invalid }

class Login extends FormzInput<String, PhoneNumberValidationError> {
  const Login.pure() : super.pure('');

  const Login.dirty([String value = '']) : super.dirty(value);

  @override
  PhoneNumberValidationError? validator(String? value) {
    if (value!.replaceAll(' ', '').isEmpty) {
      return PhoneNumberValidationError.empty;
    }
    if (value.length < 4) {
      return PhoneNumberValidationError.invalid;
    }

    return null;
  }
}
