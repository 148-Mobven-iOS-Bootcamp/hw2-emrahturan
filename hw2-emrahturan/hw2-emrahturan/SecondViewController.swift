//
//  ViewController.swift
//  hw2-emrahturan
//
//  Created by Emrah Turan on 21.12.2021.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        hideKeyboard()

        NotificationCenter.default.post(name: NotifyName.number, object: nil)
    }
    
    private func hideKeyboard() {
        view.endEditing(true)
    }
}

extension SecondViewController {
    static var identifier: String {
        return "SecondViewController"
    }
    
    
}

