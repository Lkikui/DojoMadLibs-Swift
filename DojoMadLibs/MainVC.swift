//
//  MainVC.swift
//  DojoMadLibs
//
//  Created by Lisa Ryland on 1/17/18.
//  Copyright © 2018 Lisa Ryland. All rights reserved.
//

import UIKit

var text = "..."

class MainVC: UIViewController, FormVCDelegate {
    
    @IBOutlet weak var madLibLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        madLibLabel?.text = text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToMainVC(segue:UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FormVC {
            destination.delegate = self
        }
    }
    
    func finishPassing(text1: String, text2: String, text3: String, text4: String) {
        print(text1, text2, text3, text4)
        madLibLabel?.text = "We are having a \(text1) time now. Later we will \(text2) and \(text3) in the \(text4)."
        print((madLibLabel?.text)!)
    }
}

