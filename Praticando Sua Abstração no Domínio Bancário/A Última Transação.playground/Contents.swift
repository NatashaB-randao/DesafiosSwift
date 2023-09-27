import Foundation

func main() {
    if let entrada = readLine() {
        let partes = entrada.split(separator: ",")

        // TODO: Solicitar ao usuário que forneça os valores necessários para criar uma Transacao.
        if partes.count == 4,
           let data = partes[safe: 0],
           let hora = partes[safe: 1],
           let descricao = partes[safe: 2],
           let valorStr = partes[safe: 3],
           let valor = Double(valorStr) {

            let transacao = Transacao(data: String(data), hora: String(hora), descricao: String(descricao), valor: valor)
            transacao.imprimir()
        } else {
            print("Entrada inválida. Certifique-se de fornecer os valores corretos (data, hora, descrição e valor).")
        }
    }
}

class Transacao {
    let data: String
    let hora: String
    let descricao: String
    let valor: Double

    init(data: String, hora: String, descricao: String, valor: Double) {
        self.data = data
        self.hora = hora
        self.descricao = descricao
        self.valor = valor
    }

    func imprimir() {
        print(descricao)
        print(data)
        print(hora)
        print(String(format: "%.2f", valor))
    }
}

extension Collection {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}

main()
