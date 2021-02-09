import 'package:flutter_clean_architecture/main/factories/factories.dart';
import 'package:flutter_clean_architecture/validation/validators/validators.dart';
import 'package:test/test.dart';

main() {
  test('Should return the correct validations', () {
    final validations = makeLoginValidations();

    expect(validations, [
      RequiredFieldValidation('password'),
      RequiredFieldValidation('email'),
      EmailValidation('email'),
    ]);
  });
}
