//
//  Results.swift
//  Skinowledge Draft Build 2
//
//  Created by Sophia Yuan on 11/9/20.
//

import UIKit

class Results: UIViewController, UIPickerViewDelegate, UIScrollViewDelegate, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.updateProfile()
    }
    
    var iModel = Model()
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBAction func updateDescription()
    {
            resultsLabel.text = "Results: \(iModel.descriptionResults)"
            print(iModel.descriptionResults)
        }
    
    func getProducts(iModel: Model)
    {
        let glowRecipeProducts: [String] = ["Plum Plump™ Hyaluronic Acid Serum", "Watermelon Glow PHA +BHA Pore-Tight Toner", "Watermelon + AHA Glow Sleeping Mask", "Watermelon Pink Juice Oil-Free Moisturizer"]
        
        let recipeDictionary : [String: [String]] = ["Glow Recipe": glowRecipeProducts]
    }
    }

