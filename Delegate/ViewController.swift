//
//  ViewController.swift
//  Delegate
//
//  Created by ホアンゴックシン on 2018/10/21.
//  Copyright © 2018 vnguider. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanRecieve {

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "forwardData" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textfield.text!
            secondVC.delegate = self
        }
    }
    
    func dataRecieved(data: String) {
        label.text = data
    }
}

