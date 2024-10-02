class ContaBancaria<T> {
  T numeroConta;
  double saldo;

  ContaBancaria(this.numeroConta, this.saldo);

  void depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
    } else {
      throw Exception('Valor de depósito deve ser positivo');
    }
  }

  void sacar(double valor) {
    if (valor > saldo) {
      throw Exception('Saldo insuficiente');
    } else {
      saldo -= valor;
    }
  }

  double getSaldo() {
    return saldo;
  }
}