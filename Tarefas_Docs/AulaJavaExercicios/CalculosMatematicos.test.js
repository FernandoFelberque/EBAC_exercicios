const {calcularMDC} = require('./MDC')
const {somaMultiplos} = require('./SomaDeMultiplos')
const {MaiorMenorIndiceDeValorDeUmVetor} = require('./MarioEMenorValorDeUmArray')

const array = [1, 4, 2, 8, 5];

describe('Calculos Matematicos', () => {
    
    it('Calculo MDC', () => {
        expect(calcularMDC(18,60)).toBe(6)
        expect(calcularMDC(322,80)).toBe(2)
        expect(calcularMDC(47,78)).toBe(1)
    
    });

    it('Maior e Menor indice de um Array', () => {
        expect(MaiorMenorIndiceDeValorDeUmVetor(array)).toBe(JSON.stringify({"menor": 0, "maior":3})) // posicao no vetor    
    });

    it('Soma De Multiplos', () => {
        expect(somaMultiplos(5,7)).toBe(156361)
        expect(somaMultiplos(2,6)).toBe(249500)
        
    });

});
