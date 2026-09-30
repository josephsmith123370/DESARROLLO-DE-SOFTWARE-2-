List<int> interseccionConMap(List<int> nums1, List<int> nums2) {
  Map<int, int> frecuencias = {};

  for (int num in nums1) {
    frecuencias[num] = (frecuencias[num] ?? 0) + 1;
  }

  List<int> resultado = [];

  for (int num in nums2) {
    if (frecuencias.containsKey(num) && frecuencias[num]! > 0) {
      resultado.add(num);
      frecuencias[num] = frecuencias[num]! - 1; 
    }
  }

  return resultado;
}

void main() {

  print(interseccionConMap([1, 2, 2, 1], [2, 2])); 

  print(interseccionConMap([4, 9, 5], [9, 4, 9, 8, 4])); 