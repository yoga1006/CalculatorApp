//
//  ShippingFeeViewController.swift
//  CalculatorApp
//
//  Created by Yoga on 2022/5/16.
//

import UIKit

class ShippingFeeViewController: UIViewController {
    
    
    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var shippingTextField: UITextField!
    @IBOutlet weak var peopleTextField: UITextField!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var shippingLabel: UILabel!
    @IBOutlet weak var payLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = "0"
        shippingLabel.text = "0"
        payLabel.text = "0"
        // Do any additional setup after loading the view.
    }
    
    //計算運費分攤
    @IBAction func calculate(_ sender: Any) {
        let moneyText = moneyTextField.text!
        let shippingText = shippingTextField.text!
        let peopleText = peopleTextField.text!
        let money = Int(moneyText)
        let shippingfee = Int(shippingText)
        let people = Int(peopleText)
        
        if money != nil, shippingfee != nil,people != nil{
            //計算公式
            let total = money!+shippingfee!
            let pay = total/people!
            totalLabel.text = String(total)
            shippingLabel.text = String(shippingfee!)
            payLabel.text = String(pay)
            
            
        }
        
    }
    
    //清除按鍵
    @IBAction func clearAll(_ sender: Any) {
        moneyTextField.text = ""
        shippingTextField.text = ""
        peopleTextField.text = ""
        totalLabel.text = "0"
        shippingLabel.text = "0"
        payLabel.text = "0"
    }
    
    //點選畫面任一處，收鍵盤
    @IBAction func closeKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
