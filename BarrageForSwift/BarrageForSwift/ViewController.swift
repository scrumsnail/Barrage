//
//  ViewController.swift
//  BarrageForSwift
//
//  Created by allthings_LuYD on 16/8/5.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var barrageTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text?.characters.count == 0 {
            return false
        }
        let ssLabel = SSLabel()
        ssLabel.showInView(view: self.view, content: textField.text!)
        textField.text = nil
        return true
    }

}

