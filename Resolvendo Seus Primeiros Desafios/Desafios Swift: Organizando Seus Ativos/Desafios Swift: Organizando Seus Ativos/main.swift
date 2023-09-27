//
//  main.swift
//  Desafios Swift: Organizando Seus Ativos
//
//  Created by Natasha Brandão on 28/08/23.
//


import Foundation

func main() {
   
    //Entrada dos tipos de ativos
    let quantidadeAtivos = Int(readLine()!)!

    var ativos: [String] = []

    // Entrada dos códigos dos ativos
    for _ in 0..<quantidadeAtivos {
        if let codigoAtivo = readLine() {
            ativos.append(codigoAtivo)
        }
    }

     //TODO: Ordenar os ativos em ordem alfabética.
    for active in ativos.sorted() {
      print(active)
    }
    //TODO: Imprimir a lista de ativos ordenada, conforme a tabela de exemplos.

  }


main()
