import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        savingBal.text = "$ " + String(BalanceClass.shared.saveBal)
        loanBal.text = "$ " + String(BalanceClass.shared.loanBal)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        savingBal.text = "$ " + String(BalanceClass.shared.saveBal)
        loanBal.text = "$ " + String(BalanceClass.shared.loanBal)
    }
    
    @IBOutlet weak var loanBal: UILabel!
    @IBOutlet weak var savingBal: UILabel!
}
/*
 class HomeViewController: UIViewController {
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         savingBal.text = "$ " + String(BalanceClass.sharedVar.saveBal)
         loanBal.text = "$ " + String(BalanceClass.sharedVar.loanBal)
         
     }
     @IBOutlet weak var loanBal: UILabel!
     
     @IBOutlet weak var savingBal: UILabel!
 }
*/
//============================
/*
 class HomeViewController: UIViewController {
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         savingBal.text = "$ " + String(BalanceClass.shared.saveBal)
         loanBal.text = "$ " + String(BalanceClass.shared.loanBal)
         
     }
     
     override func viewWillAppear(_ animated: Bool) {
         savingBal.text = "$ " + String(BalanceClass.shared.saveBal)
         loanBal.text = "$ " + String(BalanceClass.shared.loanBal)
     }
     
     @IBOutlet weak var loanBal: UILabel!
     
     @IBOutlet weak var savingBal: UILabel!
 }
*/
