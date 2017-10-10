//
//  ViewController.swift
//  Stepper iOS Swift
//
//  Created by Muhammad Hilmy Fauzi on 10/10/17.
//  Copyright © 2017 Hilmy Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var labelStepper: UIStepper!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        //menampilkan ke label number
        labelNumber.text = Int(sender.value) .description
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //mengatur stepper wraps nya true
        labelStepper.wraps = true
        //jika auto repeat nya true maka ketika user menekan dan memilih stepper nilainya akan ganti
        labelStepper.autorepeat = true
        //mengatur nilai maximum dari stepper nya 10
        labelStepper.maximumValue = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

