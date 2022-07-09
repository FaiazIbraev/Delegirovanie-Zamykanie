//
//  ViewController.swift
//  delegate_testing
//
//  Created by Student on 9/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.present(vc,animated: true)
        vc.modalPresentationStyle = .fullScreen
        vc.delegate = self
        
    }
    
    
    
    @IBAction func goToThirdVCTapped(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        vc.sendSwitcherPosition = { (isOn) in // zamykanie
            if isOn{
                self.mainLabel.text = "Switcher is on"
            } else {
                self.mainLabel.text = "Switcher is off"
            }
        }
    }
    
    
}

extension ViewController: SecondVCDelegate{ // delegirovanie
    func sendText(text: String) {
        mainLabel.text = text
    }
}



