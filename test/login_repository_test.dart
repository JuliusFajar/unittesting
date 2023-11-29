import 'package:flutter_test/flutter_test.dart';
import 'package:gd13_unittesting_1291/repository/login_repository.dart';

void main() {
  test('login success', () async {
    final hasil = await LoginRepository.logintesting(
        username: 'julius_1291', password: 'c_1291');
    expect(hasil?.data.username, equals('julius_1291'));
    expect(hasil?.data.password, equals('c_1291'));
  });

  test('login failed', () async {
    final result = await LoginRepository.logintesting(
        username: 'invalid', password: 'invalid');
    expect(result, null);
  });
}
