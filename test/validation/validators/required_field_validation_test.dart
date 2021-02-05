import 'package:test/test.dart';

abstract class FieldValidation{
  String get field;
  String validate(String value);
}

class RequiredFieldValidation implements FieldValidation{
final String field;
RequiredFieldValidation(this.field);



  String validate(String value) {


    return value.isEmpty ? 'Campo obrigatório' : null;
  }
}

main() {
  test('Should return null if value is not Empty', (){
    final sut = RequiredFieldValidation('any_field');

    final error = sut.validate('any_value');

    expect(error, null);

  });

  test('Should return error if value is Empty', (){
    final sut = RequiredFieldValidation('any_field');

    final error = sut.validate('');

    expect(error, 'Campo obrigatório');

  });
}