function somaMultiplos(a ,b) {
    let soma = 0;
  
    for (let i = 1; i < 1000; i++) {
      if (i % a === 0 || i % b === 0) {
        soma += i;
      }
    }
  
    return soma;
  }
  module.exports = {somaMultiplos}
  console.log(somaMultiplos()); 
