abstract class StringValidator {
  bool isValid(String value);
}

class NonEmplyStringValidator implements StringValidator {
  @override
  bool isValid(String value){
    return value.isNotEmpty;

  }
}