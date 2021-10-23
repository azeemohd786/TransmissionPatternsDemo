//
//  PlayerVC.swift
//  RelayPatternsDemo
//
//  Created by Mohammed Azeem Azeez on 23/10/2021.
//

import Foundation
import UIKit
class PlayerVC: UIViewController {

    let notification = NotificationCenter.default
    override func viewDidLoad() {
        super.viewDidLoad()
        notification.addObserver(self, selector: #selector(self.notifyPostBadge(_:)), name: .postBadge, object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        
    }

    
    @objc func notifyPostBadge(_ notification: NSNotification) {
        if let badgeValue = notification.userInfo?["badgeValue"] as? String {
        tabBarController?.tabBar.items?[1].badgeValue = badgeValue
        }
     }

}
