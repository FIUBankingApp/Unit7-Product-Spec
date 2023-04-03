import UIKit

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
        //let x: Int? = Int(transferField.text ?? "0")
        
        
        //print(x ?? "Not work")
        BalanceClass.shared.saveBal = "600"
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
