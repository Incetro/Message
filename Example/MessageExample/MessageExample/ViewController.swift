//
//  ViewController.swift
//  MessageExample
//
//  Created by incetro on 10/07/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import UIKit
import Message

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alert(withTitle: "Title", message: "Your message")
            .addTextField { textField in
                textField.placeholder = "Placeholder"
            }
            .addButton(withTitle: "Ok!")
            .addCancelButton(withTitle: "Close")
            .show(in: self)
    }
}
