import '../lib/conta_bancaria.dart';

void main() {
  var contaCorrente = ContaBancaria<String>('12345-6', 1500.00);
  var contaPoupanca = ContaBancaria<int>(123456, 2000.00);

  contaCorrente.depositar(500.00);
  print('Saldo da Conta Corrente: R\$ ${contaCorrente.getSaldo()}');

  contaPoupanca.sacar(1000.00);
  print('Saldo da Conta Poupança: R\$ ${contaPoupanca.getSaldo()}');
}