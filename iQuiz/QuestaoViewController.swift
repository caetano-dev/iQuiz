import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0

    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag
        if usuarioAcertouResposta{
            pontuacao+=1
            sender.backgroundColor = .green
        }
        else{
            sender.backgroundColor = .red
        }
        if numeroQuestao < questoes.count-1{
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarQuestao()
        
        navigationItem.hidesSearchBarWhenScrolling = true
        tituloQuestaoLabel.numberOfLines = 0

    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        for botao in botoesRespostas{
            botao.layer.cornerRadius = 12.0
        }
    }
    @objc func configurarQuestao(){
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        for botao in botoesRespostas{
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
        
    }
}

