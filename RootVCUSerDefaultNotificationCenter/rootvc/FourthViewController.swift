//
//  FourthViewController.swift
//  rootvc
//
//  Created by agile on 4/19/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class FourthViewController: LogoutViewController { 

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnPost(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: .first, object: "objfirst")
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: mystruct.second), object: "objsecond")
    }
    override func viewDidDisappear(_ animated: Bool) {
        let obj : LogoutViewController = storyboard?.instantiateViewController(withIdentifier: "LogoutViewController") as! LogoutViewController
       removeobserverfirst()
        
        
    }
}
