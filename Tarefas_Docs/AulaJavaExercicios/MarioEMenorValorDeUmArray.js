function MaiorMenorIndiceDeValorDeUmVetor(vetor) {
    let indiceMenorValor = 0;
    let indiceMaiorValor = 0;
  
    for (let i = 1; i < vetor.length; i++) {
      if (vetor[i] < vetor[indiceMenorValor]) {
        indiceMenorValor = i;
      }
      if (vetor[i] > vetor[indiceMaiorValor]) {
        indiceMaiorValor = i;
      }
    }
  
    return JSON.stringify({ menor: indiceMenorValor, maior: indiceMaiorValor });
  }

  module.exports = {MaiorMenorIndiceDeValorDeUmVetor}
  // Array exemplo sem repetir valores
  const array = [1, 4, 2, 8, 5];
  
  // variavel que guarda o retorno da função 
  const indices = MaiorMenorIndiceDeValorDeUmVetor(array);

  console.log(`Menor valor do Vetor: ${array[indices.menor]}, Posicao no Vetor: ${indices.menor}`);
  console.log(`Maior valor do Vetor: ${array[indices.maior]}, Posicao no Vetor: ${indices.maior}`);