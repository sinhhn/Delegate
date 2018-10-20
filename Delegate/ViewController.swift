//
//  ViewController.swift
//  Delegate
//
//  Created by ホアンゴックシン on 2018/10/21.
//  Copyright © 2018 vnguider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeBackgroundColorPressed(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func forwardDataPressed(_ sender: Any) {
        performSegue(withIdentifier: "forwardData", sender: self)
    }
}

