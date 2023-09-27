mport Foundation

func main() {
    let interfaceAcionistas = InterfaceAcionistas()
    let scanner = Scanner()

    let dataInicial = scanner.nextLine()
    let dataFinal = scanner.nextLine()

    let analises = interfaceAcionistas.obterAnalisesDesempenho(dataInicial: dataInicial, dataFinal: dataFinal)

    for analise in analises {
        print(analise)
    }
}

class InterfaceAcionistas {
    func obterAnalisesDesempenho(dataInicial: String, dataFinal: String) -> [String] {
        var analises = [String]()

        var analisesOriginais = [Analise]()
        analisesOriginais.append(Analise(data: "01/01/2023", analise: "Analise de Desempenho Financeiro"))
        analisesOriginais.append(Analise(data: "15/02/2023", analise: "Analise de Riscos e Exposicoes"))
        analisesOriginais.append(Analise(data: "31/03/2023", analise: "Analises Corporativas"))
        analisesOriginais.append(Analise(data: "01/04/2023", analise: "Analise de Politicas e Regulamentacoes"))
        analisesOriginais.append(Analise(data: "15/05/2023", analise: "Analise de Ativos"))
        analisesOriginais.append(Analise(data: "30/06/2023", analise: "Analise de Inovacao e Tecnologia"))

        // Filtrar as análises dentro do período especificado
        for analise in analisesOriginais {
            let analiseDate = parseDate(dateString: analise.data)
            let initialDate = parseDate(dateString: dataInicial)
            let finalDate = parseDate(dateString: dataFinal)

            if analiseDate >= initialDate && analiseDate <= finalDate {
                analises.append(analise.analise)
            }
        }

        // Retornar a lista de análises filtradas
        return analises
    }

    func parseDate(dateString: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.date(from: dateString) ?? Date()
    }
}

class Analise {
    let data: String
    let analise: String

    init(data: String, analise: String) {
        self.data = data
        self.analise = analise
    }
}

class Scanner {
    func nextLine() -> String {
        let line = readLine()
        return line ?? ""
    }
}

main()

