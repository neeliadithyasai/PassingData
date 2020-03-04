//
//  SecondViewController.swift
//  PassingData
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var lblWelcome: UILabel!
    var name: String?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         self.navigationItem.hidesBackButton = true
       
        if let nm = name
        {
            self.lblWelcome.text = "welcome, \(nm)"
             self.navigationItem.title = "welcome, \(nm)"
            self.addCloseButton()
        }else{
            self.lblWelcome.text = "No Name sent from First VC"
        }
    
   
    }

    
    private func addCloseButton()
    {
        let btnclose = UIBarButtonItem(title: "close", style: .plain, target: self, action: #selector(self.goBack))
        self.navigationItem.rightBarButtonItem = btnclose
    }
    
    @objc func goBack()
    {
        self.navigationController?.popViewController(animated: true)
    }

}
