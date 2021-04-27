abstract class StringValidator {
  bool isValid(String value);
}

class NonEmplyStringValidator implements StringValidator {
  @override
  bool isValid(String value){
    return value.isNotEmpty;

  }
}

class EmailAndPasswordValidators {
  final StringValidator emailValidator = NonEmplyStringValidator();
  final StringValidator passwordValidator = NonEmplyStringValidator();
  final String invalidEmailErrorText = 'Email can\'t be empty';
  final String invalidPasswordErrorText = 'Password can\'t be empty';
}