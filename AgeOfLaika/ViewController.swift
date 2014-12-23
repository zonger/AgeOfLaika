//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Ryan Liu on 2014-12-23.
//  Copyright (c) 2014 Ryan Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearLabel: UILabel!
    @IBOutlet weak var enterDogYears: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertFromDogYearsToHumanYears(sender: UIButton) {
        let convertAge = 7;
        let conversionFromDogYearsToHumanYears = enterDogYears.text.toInt()! * convertAge;
        
        dogYearLabel.text = "\(conversionFromDogYearsToHumanYears)" + " human years";
        enterDogYears.text = "";
        enterDogYears.resignFirstResponder();
    }

}

