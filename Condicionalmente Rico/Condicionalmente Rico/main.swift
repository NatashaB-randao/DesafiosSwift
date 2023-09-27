//
//  main.swift
//  Condicionalmente Rico
//
//  Created by Natasha Brandão on 29/08/23.
//

import Foundation

func main() {
    // Entrada de dados
    let saldoTotal = Int(readLine()!)!
    let valorSaque = Int(readLine()!)!
    

//TODO: Criar as condições necessárias para impressão da saída, vide tabela de exemplos.

    if saldoTotal >= valorSaque {
      var saldoAtualizado = saldoTotal - valorSaque
      print("Saque realizado com sucesso. Novo saldo: \(saldoAtualizado)")
      
      
      
    } else {
      print("Saldo insuficiente. Saque nao realizado!")
    }
}

main()
