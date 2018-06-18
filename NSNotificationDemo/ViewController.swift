//
//  ViewController.swift
//  NSNotificationDemo
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMsg: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.methodOfReceivedNotification(notification:)), name: Notification.Name("NotificationIdentifier"), object: nil)
       

        // Do any additional setup after loading the view typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonHandlerNotification(_ sender: Any) {
       NotificationCenter.default.post(name: Notification.Name("NotificationIdentifier"), object: nil)
       

    }
    @objc func methodOfReceivedNotification(notification:Notification){
        print("got notification")
        labelMsg.text = "Got Notification"
    }
   
}

