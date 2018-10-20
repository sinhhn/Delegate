//
//  SecondViewController.swift
//  Delegate
//
//  Created by ホアンゴックシン on 2018/10/21.
//  Copyright © 2018 vnguider. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backwardDataPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
