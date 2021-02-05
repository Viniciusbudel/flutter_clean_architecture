import 'package:test/test.dart';

abstract class FieldValidation{
  String get field;
  String validate(String value);
}

class RequiredFieldValidation implements FieldValidation{
final String field;
RequiredFieldValidation(this.field);



  String validate(String value) {

    return null;
  }
}

main() {
  test('Should return null if value is not Empty', (){
    final sut = RequiredFieldValidation('any_field');

    final error = sut.validate('any_value');

    expect(error, null);

  });
}