//
//  ThirdViewController.swift
//  rootvc
//
//  Created by agile on 4/19/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

struct mystruct {
    static var second = "second"
}

class ThirdViewController: UIViewController {

    @IBAction func btnAddobs(_ sender: UIButton) {
        
        NotificationCenter.default.addObserver(self, selector: #selector(secondnotification(_:)), name: NSNotification.Name(rawValue: mystruct.second), object: nil)
        let objstory = storyboard?.instantiateViewController(withIdentifier: "FourthViewController")as! FourthViewController
        self.navigationController?.pushViewController(objstory, animated: true)
        
    }
    
    @objc func secondnotification (_ notification:Notification) {
        print(notification.name)
        print(notification.object)
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
