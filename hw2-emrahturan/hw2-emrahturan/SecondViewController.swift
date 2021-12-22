//
//  ViewController.swift
//  hw2-emrahturan
//
//  Created by Emrah Turan on 21.12.2021.
//

import UIKit

protocol SecondVCDelegate: AnyObject {
    func showHome()
}

class SecondViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    weak var delegate: SecondVCDelegate?
    var closure: (() -> ())?
    
    var data: [String:Any] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        view.endEditing(true) //hide keyboard
        closure?()
        data["selectedNumber"] = Int(textField.text ?? "0")
        NotificationCenter.default.post(name: NotifyName.number, object: nil, userInfo: data)
    }
    
    @IBAction func exitButtonTapped(_ sender: Any) {
        delegate?.showHome()
    }
}

extension SecondViewController {
    static var identifier: String {
        return "SecondViewController"
    }
}
