//
//  SecondViewController.swift
//  Delegate
//
//  Created by ホアンゴックシン on 2018/10/21.
//  Copyright © 2018 vnguider. All rights reserved.
//

import UIKit

protocol CanRecieve {
    func dataRecieved(data: String)
}

class SecondViewController: UIViewController {
    var data: String = ""
    var delegate: CanRecieve?
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = data
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backwardDataPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.dataRecieved(data: textfield.text!)
    }
    
}
