//
//  ViewController.swift
//  hw2-emrahturan
//
//  Created by Emrah Turan on 21.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(notificationTriggered),
                                               name:  NotifyName.number,
                                               object: nil)
    }
    
    @objc func notificationTriggered() {
        print("notification triggered")
    }

    @IBAction func secondPageButtonTapped(_ sender: Any) {
        showSecondPage()
    }
    
    private func showSecondPage() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyBoard.instantiateViewController(withIdentifier: SecondViewController.identifier) as! SecondViewController
        self.present(vc, animated: true, completion: nil)
    }
}

