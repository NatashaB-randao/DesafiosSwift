import Foundation

class Cofre {
    var tipo: String
    var metodoAbertura: String

    init(tipo: String, metodoAbertura: String) {
        self.tipo = tipo
        self.metodoAbertura = metodoAbertura
    }

    func imprimirInformacoes() {
        print("Tipo:", tipo)
        print("Metodo de abertura:", metodoAbertura)
    }
}

class CofreDigital: Cofre {
    var senha: Int

    init(senha: Int) {
        self.senha = senha
        super.init(tipo: "Cofre Digital", metodoAbertura: "Senha")
    }

    func validarSenha(confirmacaoSenha: Int) -> Bool {
        return confirmacaoSenha == senha
    }
}

class CofreFisico: Cofre {
    override init(tipo: String, metodoAbertura: String) {
        super.init(tipo: "Cofre Fisico", metodoAbertura: "Chave")
    }
}

func main() {
    if let tipoCofre = readLine() {
        if tipoCofre.lowercased() == "digital" {
            if let senhaStr = readLine(), let senha = Int(senhaStr),
               let confirmacaoSenhaStr = readLine(), let confirmacaoSenha = Int(confirmacaoSenhaStr) {

                let cofre = CofreDigital(senha: senha)
                cofre.imprimirInformacoes()

  // TODO:  Implemente a condição necessário para a verificação dos cofres seguros:
  
              if cofre.validarSenha(confirmacaoSenha: confirmacaoSenha) {
                    print("Cofre aberto!")
                } else {
                    print("Senha incorreta!")
                }
            }
        } else if tipoCofre.lowercased() == "fisico" {
            let cofre = CofreFisico(tipo: "Cofre Físico", metodoAbertura: "Chave")
            cofre.imprimirInformacoes()
        } else {
            print("Tipo de cofre inválido.")
        }
    }
}

main()


