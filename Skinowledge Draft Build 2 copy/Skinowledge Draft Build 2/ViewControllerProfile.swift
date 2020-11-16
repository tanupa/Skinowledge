//
//  ViewControllerProfile.swift
//  Skinowledge Draft Build 2
//
//  Created by Jessabelle Delen Ramos on 11/3/20.
//

import UIKit

class ViewControllerProfile:  ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateProfile()
    }
    @IBOutlet weak var profileName: UILabel!

    @IBOutlet weak var ageLabel: UILabel!

    @IBOutlet weak var sexLabel: UILabel!

    @IBOutlet weak var mainIssueLabel: UILabel!

    @IBOutlet weak var subIssueLabel: UILabel!

    @IBOutlet weak var mainIssueDescriptionLabel: UILabel!
    
    
    // Can now update upon viewing the screen
    // however it now updates everytime a screen is nav'd to
    @IBAction func updateProfile()
    {
        //iModel.gender = "female"
        
        //print("Gender: " + "\(iModel.gender)")
       
        // this works!
        // we just need to get it to work with iModel.gender etc
      //  print(sexLabel?.text!)
        if let text = sexLabel?.text {
            sexLabel.text = iModel.gender
        }
      //  print(ageLabel?.text!)
        if let text = ageLabel?.text {
            ageLabel.text = "years"
        }
      //  print(ageLabel?.text)
        mainIssueLabel?.text = "main issue:   \(iModel.mainIssue)"
        subIssueLabel?.text = "sub-issue:   \(iModel.subIssue)"
        
    }
        
}
