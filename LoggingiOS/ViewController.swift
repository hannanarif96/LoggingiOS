//
//  ViewController.swift
//  LoggingiOS
//
//  Created by Hannan on 8/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    var openFlutterCallback: (() -> Void)?

        @IBAction func openFlutterModule(_ sender: Any) {
            openFlutterCallback?()
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let logger = Logger()
        let viewModel = MainViewModel(logger: logger)
        viewModel.logData(className: NSStringFromClass(classForCoder))
    }


}

