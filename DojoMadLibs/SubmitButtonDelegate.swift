//
//  SubmitButtonDelegate.swift
//  DojoMadLibs
//
//  Created by Lisa Ryland on 1/17/18.
//  Copyright © 2018 Lisa Ryland. All rights reserved.
//

import UIKit

protocol SubmitButtonDelegate {
    func submitButtonPressed(_ controller: FormVC, item: String)
}
