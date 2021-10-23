//
//  DetailVC.swift
//  RelayPatternsDemo
//
//  Created by Mohammed Azeem Azeez on 23/10/2021.
//

import Foundation
import UIKit

class DetailVC: UIViewController {

    var delegate: SendDataDelegateProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendDataButtonClicked(_ sender: Any) {
        if self.delegate != nil {
            let dataToBeSent = "Delegate Test Success"
            self.delegate?.sendDataToViewController(myData: dataToBeSent)
            dismiss(animated: true, completion: nil)
        }
    }

}
