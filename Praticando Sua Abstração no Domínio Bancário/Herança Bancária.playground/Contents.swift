import Foundation

class ContaBancaria {
    var nomeTitular: String
    var numeroConta: Int
    var saldo: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double) {
        self.numeroConta = numeroConta
        self.nomeTitular = nomeTitular
        self.saldo = saldo
    }

    func exibirInformacoes() {
        print("\(nomeTitular)")
        print("\(numeroConta)")
        print("Saldo: R$ \(String(format: "%.1f", saldo))")
    }
}

class ContaPoupanca: ContaBancaria {
    var taxaJuros: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double, taxaJuros: Double) {
        self.taxaJuros = taxaJuros
        super.init(numeroConta: numeroConta, nomeTitular: nomeTitular, saldo: saldo)
    }

    override func exibirInformacoes() {
        super.exibirInformacoes()
        print("Taxa de juros: \(String(format: "%.1f", taxaJuros))%")
    }
}


func main() {
    guard let nomeTitular = readLine() else { return }
    guard let numeroConta = Int(readLine()!) else { return }
    guard let saldo = Double(readLine()!) else { return }
    guard let taxaJuros = Double(readLine()!) else { return }

    let contaPoupanca = ContaPoupanca(numeroConta: numeroConta, nomeTitular: nomeTitular, saldo: saldo, taxaJuros: taxaJuros)

    print("Conta Poupanca:")
    contaPoupanca.exibirInformacoes()
}

main()
