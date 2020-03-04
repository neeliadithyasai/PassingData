//
//  ViewController.swift
//  PassingData
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
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

