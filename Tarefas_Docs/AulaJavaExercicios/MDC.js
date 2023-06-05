function calcularMDC(num1, num2) {

    // MDC do mesmo numero 
    if (num1 === num2) {
        return num1;
    }
    // MDC de zero
    if (num1 === 0 || num2 === 0) {
        return 0;
    }

    // Encontrar o maior e o menor número
    let maiorNumero = 0;
    let menorNumero = 0;
    if (num1>num2 ) {
        maiorNumero = num1;
        menorNumero = num2;
    } else {
        menorNumero = num1;
        maiorNumero = num2;
    }


   // calculos do  resto
    let resto = maiorNumero % menorNumero;
    while (resto !== 0) {

        maiorNumero = menorNumero;
        menorNumero = resto;
        resto = maiorNumero % menorNumero;
    }
    //MDC
    return menorNumero;
}
module.exports = {calcularMDC}
console.log(calcularMDC(18, 60)); 