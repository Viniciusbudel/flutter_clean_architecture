import 'package:test/test.dart';

import 'package:flutter_clean_architecture/validation/validators/validators.dart';

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

  test('Should return error if value is null', () {
    expect(sut.validate(null), 'Campo obrigatório');
  });
}
