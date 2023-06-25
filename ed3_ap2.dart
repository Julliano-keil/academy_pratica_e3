import 'dart:math';

void main() {
  print(' A(B) = ${funcaoA(funcaoB)}');
  print(' A(C) = ${funcaoA(funcaoC)}');
}

final random = Random();

int funcaoA(int Function(int) funcaoParametro) {
  final random = Random();
  final resultado1 = funcaoParametro(random.nextInt(100));
  final resultado2 = funcaoParametro(random.nextInt(100));
  final soma = resultado1 + resultado2;

  return soma;
}

int funcaoB(int numero) => numero * 2;

int funcaoC(int numero) => numero + 2;
