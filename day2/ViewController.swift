//
//  ViewController.swift
//  day2
//
//  Created by nakama on 19/10/18.
//  Copyright © 2018 nakama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var information: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let viewTest = UIView(frame: CGRect(x:100, y:0, width:100, height:100))
        viewTest.backgroundColor = UIColor.black
        viewTest.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        information.isHidden = true
        self.view.addSubview(viewTest)
    }

    @IBAction func submit(_ sender: Any) {
        print("This is fake submit!")
        titleLabel.text = "Fake Dream Tracker"
        information.isHidden = false
        
//      if username.text != "" && password.text != "" {
        if !(username.text?.isEmpty ?? true) && !(password.text?.isEmpty ?? true) {
            information.backgroundColor = UIColor.green
            information.textColor = UIColor.black
            information.text = "YEAY! \(username.text ?? "") got smarter!"
        }else{
            information.backgroundColor = UIColor.red
            information.textColor = UIColor.white
            information.text = "Dummy, Fill The TextFields!"
        }
    }
// }
    
    @IBAction func gesture(_ sender: Any) {
        print("touch!")
    }
    
}

