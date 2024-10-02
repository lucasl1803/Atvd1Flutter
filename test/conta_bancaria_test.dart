import 'package:test/test.dart';
import '../lib/conta_bancaria.dart';

void main() {
  group('Teste da Conta Bancária', () {
    ContaBancaria<String> conta;

    setUp(() {
      conta = ContaBancaria<String>('12345-6', 1000.00);
    });

    test('Depositar valor positivo', () {
      conta.depositar(500.00);
      expect(conta.getSaldo(), 1500.00);
    });

    test('Sacar valor dentro do saldo', () {
      conta.sacar(300.00);
      expect(conta.getSaldo(), 700.00);
    });

    test('Sacar valor acima do saldo', () {
      expect(() => conta.sacar(1200.00), throwsA(isA<Exception>()));
    });

    test('Depositar valor negativo', () {
      expect(() => conta.depositar(-100.00), throwsA(isA<Exception>()));
    });
  });
}