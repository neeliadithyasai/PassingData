//
//  ViewController.swift
//  PassingData
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0
        {
             return self.countryList.count
        }
        return codeList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0
        {
         print(countryList[row])
            
        }else
        {
            print(codeList[row])
        }
    }
    
    func   pickerView(_ pickerView: UIPickerView, titleForRow row : Int, forComponent component: Int) -> String?
    {
        if component == 0
    {
    return countryList[row]
    
    }
            
       return codeList[row]
                  }
    
    
   
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var pickerCountry: UIPickerView!
    
  var countryList = ["india", "canada", "usa","iraq", "australia", "Pakistan","uk"]
    
     var codeList = ["in", "can", "usa","iq", "aus", "Pak","uk"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerCountry.delegate = self
        pickerCountry.dataSource = self
      
       
    }

    @IBAction func btnGoNext(_ sender: UIButton)
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "secondVC") as! SecondViewController
       if let  name = self.txtName.text
            {
                secondVC.name = name
                self.navigationController?.pushViewController(secondVC, animated: true)
                
               // self.present(secondVC, animated: true, completion: nil)
        }
       
            
        
    
    }
    
}

