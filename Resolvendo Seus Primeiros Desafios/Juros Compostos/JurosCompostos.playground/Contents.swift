import Foundation

func calculateInvestmentValue() {
    guard let valorInicial = readLine().flatMap(Double.init),
          let taxaJuros = readLine().flatMap(Double.init),
          let periodo = readLine().flatMap(Double.init)
    else {
        return
    }
    
    var valorFinal = valorInicial

   
     //TODO: Iterar, baseado no período em anos, para calculo do valorFinal com os juros.
     
     let valorJuros = pow((1.0 + taxaJuros),periodo);
     valorFinal = (valorInicial * valorJuros);
     let valorFinalFormatado = String(format:"%.2f", valorFinal);
     print("Valor final do investimento: R$ \(valorFinalFormatado)");

}

calculateInvestmentValue()
