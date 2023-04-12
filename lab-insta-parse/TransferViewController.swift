import UIKit

class TransferViewController: UIViewController {

    @IBOutlet weak var transferField: UITextField!
    @IBOutlet weak var amountField: UITextField!
    
    
    @IBOutlet weak var NameRecipientField: UITextField!
    @IBOutlet weak var AmountSavingField: UITextField!
    
    var nameOfRecipient = ""
    var amountToSend = 0
    
    var amountToSub: Int = 0
    var amountInSave: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func transferSendButton(_ sender: Any) {
        handleTransferLogic()
    }
    
    private func handleTransferLogic() {
        //let x: Int? = Int(transferField.text ?? "0")
        
        
        //print(x ?? "Not work")
        BalanceClass.shared.saveBal -= Float(AmountSavingField.text!) ?? Float(0)
        BalanceClass.shared.loanBal -= Float(AmountSavingField.text!) ?? Float(0)
        
        // create the alert
                let alert = UIAlertController(title: "Transaction verification", message: "Would you like to continue through with this transaction", preferredStyle: UIAlertController.Style.alert)

                // add the actions (buttons)
                alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: { action in
                    
                    // create the alert
                           let alert = UIAlertController(title: "Transaction complete", message: "", preferredStyle: UIAlertController.Style.alert)

                           // add an action (button)
                           alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { action in
                               
                               // do something like...
                               self.NameRecipientField.text = ""
                               self.AmountSavingField.text = ""
                               let homeView = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                               self.present(homeView, animated: true, completion: nil)
                               
                           }))

                           // show the alert
                           self.present(alert, animated: true, completion: nil)
                }))
                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))

                // show the alert
                self.present(alert, animated: true, completion: nil)
        //print(BalanceClass.shared.saveBal)
    }
    
    
}
/*
 private func handleTransferLogic() {
     BalanceClass.shared.saveBal += 100
     print(BalanceClass.shared.saveBal)
 }
=========================================
 class TransferViewController: UIViewController {

     @IBOutlet weak var transferField: UITextField!
     @IBOutlet weak var amountField: UITextField!
     
     var nameOfRecipient = ""
     var amountToSend = 0
     
     override func viewDidLoad() {
         super.viewDidLoad()
     }
     
     @IBAction func transferSendButton(_ sender: Any) {
         handleTransferLogic()
     }
     
     private func handleTransferLogic() {
         let x: Int! = Int(transferField.text!)
         var y: Int! = Int(BalanceClass().saveBal)
         
         y -= x
         
         BalanceClass.shared.saveBal = String(y)
         print(BalanceClass.shared.saveBal)
     }
     
 }
 
=========================================================
 class TransferViewController: UIViewController {

     @IBOutlet weak var transferField: UITextField!
     @IBOutlet weak var amountField: UITextField!
     
     var nameOfRecipient = ""
     var amountToSend = 0
     
     override func viewDidLoad() {
         super.viewDidLoad()
     }
     
     @IBAction func transferSendButton(_ sender: Any) {
         handleTransferLogic()
     }
     
     private func handleTransferLogic() {
         let x: Int? = Int(transferField.text ?? "0")
         
         if let unwrapped1 = x
         {
             let amountToSub = x
         }
         else
         {
             let amountToSub = 0
         }
         
         var y: Int? = Int(BalanceClass().saveBal)
             
         if let unwrapped2 = y
         {
             let amountInSave = y
         }
         else
         {
             let amountInSave = 500
         }
         
         amountInSave -= amountToSub
         
         BalanceClass.shared.saveBal = String(amountInSave)
         print(BalanceClass.shared.saveBal)
     }
     
 }
 ===========================================================
 class TransferViewController: UIViewController {

     @IBOutlet weak var transferField: UITextField!
     @IBOutlet weak var amountField: UITextField!
     
     var nameOfRecipient = ""
     var amountToSend = 0
     
     var amountToSub: Int = 0
     var amountInSave: Int = 0
     
     override func viewDidLoad() {
         super.viewDidLoad()
     }
     
     @IBAction func transferSendButton(_ sender: Any) {
         handleTransferLogic()
     }
     
     private func handleTransferLogic() {
         let x: Int? = Int(transferField.text ?? "0")
         
         if x != nil
         {
             let amountToSub = x
         }
         else
         {
             let amountToSub = 0
         }
         
         var y: Int? = Int(BalanceClass().saveBal)
             
         if y != nil
         {
             let amountInSave = y
         }
         else
         {
             let amountInSave = 500
         }
         
         amountInSave -= amountToSub
         
         BalanceClass.shared.saveBal = String(amountInSave)
         print(BalanceClass.shared.saveBal)
     }
     
 }
 =======================================================
 private func handleTransferLogic() {
     let x: Int? = Int(transferField.text ?? "0")
     
     
     print(x ?? "Not work")
     //BalanceClass.shared.saveBal = String(amountInSave)
     //print(BalanceClass.shared.saveBal)
 ======================================================
*/
//Crashes when switching views cause of memory managment?
//Problem with unwrapping opionals when handling logic
//Manual unwrapping?
//Even when the default value is used, crash occurs when you switch views. Memory managment again?
