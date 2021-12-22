//
//  ViewController.swift
//  hw2-emrahturan
//
//  Created by Emrah Turan on 21.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(notificationTriggered(_:)),
                                               name:  NotifyName.number,
                                               object: nil)
    }
    
    @objc func notificationTriggered(_ notification: Notification) {
        print("notification")
        if let name = notification.userInfo?["selectedNumber"] as? Int {
            textLabel.text = "Tuttuğunuz sayı: \(name)"
        }
    }

    @IBAction func secondPageButtonTapped(_ sender: Any) {
        showSecondPage()
    }
    
    private func showSecondPage() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: SecondViewController.identifier) as! SecondViewController
        vc.delegate = self
        vc.closure = closure
        self.present(vc, animated: true, completion: nil)
    }
    
    private func closure() {
        print("closure")
    }
}

extension ViewController: SecondVCDelegate {
    func showHome() {
        print("delegate")
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
