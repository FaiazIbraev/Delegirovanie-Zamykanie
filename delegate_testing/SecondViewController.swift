//
//  SecondViewController.swift
//  delegate_testing
//
//  Created by Student on 9/7/22.
//

import UIKit

protocol SecondVCDelegate{ // dlya delegirovania
    func sendText(text: String) // dlya delegirovania
}

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var mainTextField: UITextField!
    @IBOutlet weak var goback: UIButton!
    
    var delegate: SecondVCDelegate? // dlya delegirovania
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func goBackButton(_ sender: UIButton) {
        if let text = mainTextField.text{
            delegate?.sendText(text: text) // dlya delegirovania
        }
        self.dismiss(animated: true)
    }
    
}
