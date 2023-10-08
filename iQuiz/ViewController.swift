import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    @IBAction func botaoPrecionado(_ sender: Any) {
        print("botao precionado")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
        
    }
    func configuraLayout(){
        botaoIniciarQuiz.layer.cornerRadius = 12.0
    }

}

