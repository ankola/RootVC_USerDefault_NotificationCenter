//
//  LogoutViewController.swift
//  rootvc
//
//  Created by agile on 4/17/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController {

    // ADD observer Button
    @IBAction func btnAddobs(_ sender: UIButton) {
       
        NotificationCenter.default.addObserver(self, selector: #selector(str(_:)), name: .first, object: nil)
        
        let objstory = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        
        self.navigationController?.pushViewController(objstory, animated: true)
        
    }
    
    @objc func str(_ notification:NSNotification) {
        print(notification.name)
        print(notification.object)
        NotificationCenter.default.removeObserver(self)
    }
    
    func removeobserverfirst() {
        NotificationCenter.default.removeObserver(self)
    }

    // Logout Button
    @IBAction func btnlogout(_ sender: UIButton) {
        let loginvc:ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as!  ViewController
        let appdelegate = UIApplication.shared.delegate as? AppDelegate
        appdelegate?.window?.rootViewController = loginvc
        
        UserDefaults.standard.set(false, forKey: "login")
        UserDefaults.standard.synchronize()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension Notification.Name{
    static let first = Notification.Name("First")
}

