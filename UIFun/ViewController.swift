//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO: Setup the IBOutlets
    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
    }

    func mixColors(first: String, second: String) -> UIColor {
        
        switch (first, second) {
        case ("Red", "Red"):
            return UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
            return UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            return UIColor.purple
        case ("Yellow", "Yellow"):
            return UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            return UIColor.green
        case ("Blue", "Blue"):
            return UIColor.blue
        default:
            return UIColor.white
        }
        
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        // TODO: Implement this function according to the instructions.
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
        switch (firstSelection, secondSelection) {
        case (0,0):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
            print("Red and red make red!")
        case (1,1):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Yellow")
            print("Yellow and yellow make yellow!")
        case (2,2):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
            print("Blue and blue make blue!")
        case (0,1):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
            print("Red and yellow make orange!")
        case (1,0):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Red")
            print("Yellow and red make orange!")
        case (0,2):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
            print("Red and blue make purple!")
        case (2,0):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Red")
            print("Blue and red make purple!")
        case (1,2):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Blue")
            print("Yellow and blue make green!")
        case (2,1):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Yellow")
            print("Blue and yellow make green!")
        default:
            print("Not available...")
        }
        
        
    }

}
