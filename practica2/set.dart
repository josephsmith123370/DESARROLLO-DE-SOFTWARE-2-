int frutasSinColocar(List<int> frutas, List<int> cestas) {

  Set<int> cestasOcupadas = {};
  int noColocadas = 0;

  for (int i = 0; i < frutas.length; i++) {
    int cantidadFruta = frutas[i];
    bool asignada = false;

  
    for (int j = 0; j < cestas.length; j++) {
      if (!cestasOcupadas.contains(j) && cestas[j] >= cantidadFruta) {
        cestasOcupadas.add(j); 
        asignada = true;
        break; 
      }
    }

    if (!asignada) {
      noColocadas++;
    }
  }

  return noColocadas;
}

void main() {

  print(frutasSinColocar([3, 6, 1], [6, 4, 7])); 
}