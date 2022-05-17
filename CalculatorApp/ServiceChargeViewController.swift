//
//  ServiceChargeViewController.swift
//  CalculatorApp
//
//  Created by Yoga on 2022/5/16.
//

import UIKit

class ServiceChargeViewController: UIViewController {
    
    
    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var peopleTextField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var payLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "0"
        tipLabel.text = "0"
        payLabel.text = "0"
        
        // Do any additional setup after loading the view.
    }
    
    //計算小費
    @IBAction func calculate(_ sender: Any) {
        let moneyText = moneyTextField.text!
        let tipText = tipTextField.text!
        let peopleText = peopleTextField.text!
        //將字串變成數字
        let money = Double(moneyText)
        let tips = Double(tipText)
        let people = Double(peopleText)
       
        //當三個TextField不等於空(!=nil)的才會開始做計算
        //多個條件用,串接
        if money != nil,tips != nil,people != nil{
            
            let totalmoney = money!+(money!*(tips!/100))
            let tipsmoney = money!*(tips!/100)
            let peoplemoney = totalmoney/people!
            
            //只想顯示小數點後一位、兩位的結果
            totalLabel.text = String(format: "%.2f", totalmoney)
            tipLabel.text = String(format: "%.2f", tipsmoney)
            payLabel.text = String(format: "%.1f", peoplemoney)
            
            
        }
        
    }
    
    //清除所有數值
    @IBAction func clearAll(_ sender: Any) {
        moneyTextField.text = ""
        tipTextField.text = ""
        peopleTextField.text = ""
        totalLabel.text = ""
        tipLabel.text = ""
        payLabel.text = ""
        
    }
    
    //按畫面任何一處皆可收起鍵盤
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
