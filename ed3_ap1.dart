import 'dart:math';

main() {
  final random = Random();

  final lista1 = List.generate(5, (_) => random.nextInt(100));
  final lista2 = List.generate(5, (_) => random.nextInt(100));

  imprimirlistas(lista1);
  imprimirlistas(lista2);

  final lista3 = recebelista(lista1, lista2);
  imprimirlistas(lista3);
}

void imprimirlistas(List<int> lista) {
  if (lista.length > 0) {
    print('Lista: ${lista.join(', ')}');
  } else
    print("lista vazia");
}

List<int> recebelista(List<int> lista1, List<int> lista2) {
  if (lista1.length != lista2.length) {
    return [];
  }
  final resultado = <int>[];

  for (var indice = 0; indice < lista1.length; indice++) {
    final lista01 = lista1[indice];
    final lista02 = lista2[indice];
    final soma = lista01 + lista02;
    print('${lista01} + ${lista02}');

    resultado.add(soma);
  }
  return resultado;
}
