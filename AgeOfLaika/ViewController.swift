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
        var dogYears = enterDogYears.text.toInt()!;
        let firstTwoYears = 10.5;
        let afterTwoYears = 4;
        
        if dogYears <= 2 {
            dogYearLabel.text = "\(Double(dogYears) * firstTwoYears)";
        } else {
            dogYears -= 2;
            dogYearLabel.text = "\(Double(dogYears * afterTwoYears) + Double(2) * firstTwoYears)" + " human Years";
        }

        enterDogYears.text = "";
        enterDogYears.resignFirstResponder();
    }

}

