import 'dart:math';

void main() {
  final random = Random();

  final Numeros = List.generate(15, (_) => random.nextInt(5000));

  recebenumero(Numeros);
}

void recebenumero(List<int> numero) {
  numero.sort();

  //imprime os numeros na tela
  for (final decimal in numero) {
    print('decimal; $decimal,'
        'binario: ${converteParaBinario(decimal)},'
        'Octonal: ${converteParaOctonal(decimal)},'
        'Exadecimal:${converteParaExadecimal(decimal)}');
  }
}

//faz a conversao dos numeros
String converteParaBinario(int numero) {
  final binario = numero.toRadixString(2);
  final binarioComZeros = binario.substring(0, 5).padLeft(5, '0');
  return binarioComZeros;
}

String converteParaOctonal(int numero) => numero.toRadixString(8);
String converteParaExadecimal(int numero) => numero.toRadixString(16);
