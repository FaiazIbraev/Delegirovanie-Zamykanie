//
//  ThirdViewController.swift
//  delegate_testing
//
//  Created by Student on 9/7/22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var switcher: UISwitch!
    var sendSwitcherPosition: ((Bool) -> Void)? // dlya zamykaniya
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func goBack(_ sender: UIButton) {
        sendSwitcherPosition!(switcher.isOn) // dlya zamykaniya
        self.dismiss(animated: true)
    }
    

}
