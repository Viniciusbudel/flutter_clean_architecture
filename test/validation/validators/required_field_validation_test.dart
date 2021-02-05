import 'package:test/test.dart';

abstract class FieldValidation {
  String get field;

  String validate(String value);
}

class RequiredFieldValidation implements FieldValidation {
  final String field;

  RequiredFieldValidation(this.field);

  String validate(String value) {
    return value.isEmpty ? 'Campo obrigatório' : null;
  }
}

main() {
  RequiredFieldValidation sut;

  setUp(() {
    sut = RequiredFieldValidation('any_field');
  });

  test('Should return null if value is not Empty', () {
    expect(sut.validate('any_value'), null);
  });

  test('Should return error if value is Empty', () {
    expect(sut.validate(''), 'Campo obrigatório');
  });
}
