//
//  ViewController.swift
//  RelayPatternsDemo
//
//  Created by Mohammed Azeem Azeez on 23/10/2021.
//

import UIKit

class ViewController: UIViewController, SendDataDelegateProtocol {

    @IBOutlet var delegateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // KVO............
        _ = person.observe(\Person.name, options: [.new,.old, .initial]) { person, change in
            print("I'm now called \(person.name)")
        }
    }
    
    @IBAction func kvoTapped(_ sender: Any) {
        _ = person.observe(\Person.name, options: [.new,.old, .initial]) { person, change in
            print("I'm now called \(person.name)")
        }
    }
    
    func sendDataToViewController(myData: String) {
        // THIS IS FROM DELEGATE
        self.delegateLabel.text = myData
        // SET NEW NAME 4 KVO
        person.name = "SwiftKat Code Factory"
        // SET BADGE 4 NOTIFICATION
        let badgeValue:[String: String] = ["badgeValue": "1"]
        notification.post(name: .postBadge, object: nil, userInfo: badgeValue)
        notification.removeObserver(self, name: .postBadge, object: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "getDataSegue" {
                let detailVC: DetailVC = segue.destination as! DetailVC
                detailVC.delegate = self
            }
        }
}

