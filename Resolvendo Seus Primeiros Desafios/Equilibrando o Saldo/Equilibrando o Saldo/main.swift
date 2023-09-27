//
//  main.swift
//  Equilibrando o Saldo
//
//  Created by Natasha Brandão on 28/08/23.
//

import Foundation

func main() {
    var saldoAtual = Double(readLine()!)!
    var valorDeposito = Double(readLine()!)!
    var valorRetirada = Double(readLine()!)!

    //TODO: Calcular o saldo atualizado de acordo com a descrição deste desafio.
    
    
    var saldoAtualizado = saldoAtual + valorDeposito - valorRetirada
    
    
  //TODO: Imprimir o a saída de conforme a tabela de exemplos (uma casa decimal).
    
    
    
    print("Saldo atualizado na conta: \(saldoAtualizado)")

}

main()
