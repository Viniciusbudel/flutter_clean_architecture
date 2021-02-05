import 'package:flutter_clean_architecture/presentation/protocols/protocols.dart';
import 'package:flutter_clean_architecture/validation/protocols/field_validation.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class ValidationComposite implements Validation {
  final List<FieldValidation> validation;

  ValidationComposite(this.validation);

  String validate({String field, String value}) {
    return null;
  }
}

class FieldValidationSpy extends Mock implements FieldValidation {}

main() {
  FieldValidationSpy validation1;
  FieldValidationSpy validation2;
  FieldValidationSpy validation3;
  ValidationComposite sut;

  mockValidation1(String error) {
    when(validation1.validate(any)).thenReturn(error);
  }

  mockValidation2(String error) {
    when(validation2.validate(any)).thenReturn(error);
  }

  mockValidation3(String error) {
    when(validation3.validate(any)).thenReturn(error);
  }

  setUp(() {
    validation1 = FieldValidationSpy();
    validation2 = FieldValidationSpy();
    validation3 = FieldValidationSpy();

    when(validation1.field).thenReturn('any_field');
    mockValidation1(null);

    when(validation2.field).thenReturn('any_field');
    mockValidation2('');

    when(validation3.field).thenReturn('other_field');
    mockValidation3(null);

    sut = ValidationComposite([validation1, validation2]);
  });

  test('Should return null if all validations return null or empty', () {
    mockValidation2('');

    final error = sut.validate(field: 'any_field', value: 'any_value');

    expect(error, null);
  });
}
