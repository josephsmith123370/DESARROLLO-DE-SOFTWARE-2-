List<int> combinarListasOrdenadas(List<int> lista1, List<int> lista2) {
  List<int> resultado = [];
  int i = 0;
  int j = 0;
  while (i < lista1.length && j < lista2.length) {
    if (lista1[i] <= lista2[j]) {
      resultado.add(lista1[i]);
      i++;
    } else {
      resultado.add(lista2[j]);
      j++;
    }
  }

  while (i < lista1.length) {
    resultado.add(lista1[i]);
    i++;
  }

  while (j < lista2.length) {
    resultado.add(lista2[j]);
    j++;
  }

  return resultado;
}

void main() {
  
  print(combinarListasOrdenadas([1, 2, 4], [1, 3, 4])); // [1, 1, 2, 3, 4, 4]

  print(combinarListasOrdenadas([], [])); // []


  print(combinarListasOrdenadas([], [0])); // [0]
}