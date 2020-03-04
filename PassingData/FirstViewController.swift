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
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.countryList.count
    }
    func   pickerView(_ pickerView: UIPickerView, titleForRow row : Int, forComponent: Int) -> String?
              {
       return countryList[row]
                  }
   
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var pickerCountry: UIPickerView!
    
  var countryList = ["india", "canada", "usa","iraq", "australia", "Pakistan","uk"]
    
   
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

