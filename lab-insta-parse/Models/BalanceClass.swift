import UIKit

public class BalanceClass{
    
    public var saveBal: Float = 500
    public var loanBal: Float = 1000
    
    public static let shared = BalanceClass()
    
}
/*
 class BalanceClass{
     
     class var sharedVar : BalanceClass {
         struct Singleton{
             static let instance = BalanceClass()
         }
         return Singleton.instance;
     }
     
     var saveBal: Int = 500
     var loanBal: Int = 1000
     
 }
*/
