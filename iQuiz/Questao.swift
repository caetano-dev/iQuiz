import Foundation

struct Questao{
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Quando foi lançado Vingadores Ultimato?", respostas: ["2019", "2018", "2017"], respostaCorreta: 2),
    Questao(titulo: "Quando foi lançado Avatar 2?", respostas: ["2019", "2018", "2023"], respostaCorreta: 2),


]
