
import UIKit

class ViewController: UIViewController {

    @IBAction func btnLogin(_ sender: UIButton) {
        
        let logoutvc:LogoutViewController = self.storyboard?.instantiateViewController(withIdentifier: "LogoutViewController") as!  LogoutViewController
            let appdelegate = UIApplication.shared.delegate as? AppDelegate
            appdelegate?.window?.rootViewController = logoutvc
        
        UserDefaults.standard.set(true, forKey: "login")
        UserDefaults.standard.synchronize()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

  
}

