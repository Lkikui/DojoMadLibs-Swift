//
//  FormVC.swift
//  DojoMadLibs
//
//  Created by Lisa Ryland on 1/17/18.
//  Copyright © 2018 Lisa Ryland. All rights reserved.
//

import UIKit

protocol FormVCDelegate {
    func finishPassing(text1: String, text2: String, text3: String, text4: String)
}

class FormVC: UIViewController {
    var delegate: FormVCDelegate?
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToMainVC", sender: self)
        let text1 = textField1.text
        let text2 = textField2.text
        let text3 = textField3.text
        let text4 = textField4.text
        delegate?.finishPassing(text1: text1!, text2: text2!, text3: text3!, text4: text4!)
    }
    
}
