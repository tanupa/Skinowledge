//
//  ViewController.swift
//  Skinowledge Draft Build 2
//
//  Created by Jessabelle Delen Ramos on 9/18/20.
//

import UIKitgit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    // removed all the UIDataPicker code
    
    var issue: String = ""
    var nextState = false
    
    var pickerData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var iModel = Model()
    
    //Next step: find way to put this all in same method
    @IBOutlet weak var male: UIButton!
    
    @IBOutlet weak var female: UIButton!
    
    @IBOutlet weak var teensButton: UIButton!
    
    @IBOutlet weak var youngAdultsButton: UIButton!
    
    @IBOutlet weak var adultsButton: UIButton!
    
    @IBOutlet weak var dryButton: UIButton!
    
    @IBOutlet weak var oilButton: UIButton!
    
    @IBOutlet weak var combinationButton: UIButton!
    
    @IBOutlet weak var sensitiveButton: UIButton!
    
    @IBOutlet weak var submitButton: UIButton!
    
    /**
            Consolidated gender assignment functions into one function
     */
    @IBAction func updateGender(_ sender: UIButton) {
        let titleValueString = sender.currentTitle!
        iModel.gender = titleValueString
        print(iModel.gender)
    }
    
    // Next step: find way to put these all in the same method
    // tried to use the same method as updateGender, but it takes the words in as well
    // and we don't need that
    
    @IBAction func ageTeens(_ sender: Any) {
        iModel.age = "13-18"
        print(iModel.age)
    }
    
    @IBAction func ageYA(_ sender: Any) {
        iModel.age = "18-30"
        print(iModel.age)
    }
    
    @IBAction func ageAdults(_ sender: Any) {
        iModel.age = "30+"
        print(iModel.age)
    }
    
    /**
            Consolidated all the skinType assignment functions into one function
     */
    @IBAction func skinType(_ sender: UIButton) {
        let titleValueString = sender.currentTitle!
        iModel.skinType = titleValueString
        print(iModel.skinType)
    }

    
    @IBAction func Submit(_ sender: Any) {
        iModel.createCSV(iModel: iModel)
    }
    
    /**These funcs below will change the color of the button to green when pressed, and regular color when delesected
     **/

    @IBAction func buttonColorChange(_ sender: Any) {
        
        if !male.isSelected {
            male.isSelected = true
            male.setTitleColor(UIColor.white, for: UIControl.State.normal)
            male.backgroundColor = UIColor.green
        }
        else {
            male.isSelected = false
            male.setTitleColor(UIColor.white, for: UIControl.State.normal)
            male.backgroundColor = UIColor.systemBackground
        }
        //Male.tintColor = UIColor.green
    }
    
    @IBAction func buttonColorChangeF(_ sender: Any) {
        if !female.isSelected {
            female.isSelected = true
            female.setTitleColor(UIColor.white, for: UIControl.State.normal)
            female.backgroundColor = UIColor.green
        }
        else {
            female.isSelected = false
            female.setTitleColor(UIColor.white, for: UIControl.State.normal)
            female.backgroundColor = UIColor.systemBackground
        }
        //Female.tintColor = UIColor.green
    }
    
    @IBAction func teenButtonAction(_ sender: Any) {
        
        if !teensButton.isSelected {
            teensButton.isSelected = true
            teensButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            teensButton.backgroundColor = UIColor.green
        }
        else {
            teensButton.isSelected = false
            teensButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            teensButton.backgroundColor = UIColor.systemBackground
        }
    }
    
    @IBAction func youngAdultsButtonAction(_ sender: Any) {
        
        if !youngAdultsButton.isSelected {
            youngAdultsButton.isSelected = true
            youngAdultsButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            youngAdultsButton.backgroundColor = UIColor.green
        }
        else {
            youngAdultsButton.isSelected = false
            youngAdultsButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            youngAdultsButton.backgroundColor = UIColor.systemBackground
        }
    }
    
    @IBAction func adultsButtonAction(_ sender: Any) {
        if !adultsButton.isSelected {
            adultsButton.isSelected = true
            adultsButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            adultsButton.backgroundColor = UIColor.green
        }
        else {
            adultsButton.isSelected = false
            adultsButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            adultsButton.backgroundColor = UIColor.systemBackground
        }
    }
    
    /**
        There are errors in the dominant skin type selection that I will have to address later
     */
    @IBAction func dryButtonAction(_ sender: Any) {
       
        if !dryButton.isSelected {
            dryButton.isSelected = true
            dryButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            dryButton.backgroundColor = UIColor.green
        }
        else {
            dryButton.isSelected = false
            dryButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            dryButton.backgroundColor = UIColor.systemBackground
        }
    
    }
    
    @IBAction func oilyButtonAction(_ sender: Any) {
        
        if !oilButton.isSelected {
            oilButton.isSelected = true
            oilButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            oilButton.backgroundColor = UIColor.green
        }
        else {
            oilButton.isSelected = false
            oilButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            oilButton.backgroundColor = UIColor.systemBackground
        }
    }

    
    @IBAction func combinationButtonAction(_ sender: Any) {
        
        if !combinationButton.isSelected {
            combinationButton.isSelected = true
            combinationButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            combinationButton.backgroundColor = UIColor.green
        }
        else {
            combinationButton.isSelected = false
            combinationButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            combinationButton.backgroundColor = UIColor.systemBackground
        }
    }
    
    @IBAction func sensitiveButtonAction(_ sender: Any) {
        
        if !sensitiveButton.isSelected {
            sensitiveButton.isSelected = true
            sensitiveButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            sensitiveButton.backgroundColor = UIColor.green
        }
        else {
            sensitiveButton.isSelected = false
            sensitiveButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            sensitiveButton.backgroundColor = UIColor.systemBackground
        }
    }
    
    @IBAction func submitButtonAction(_ sender: Any) {
        
        if !submitButton.isSelected {
            submitButton.isSelected = true
            submitButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            submitButton.backgroundColor = UIColor.green
        }
        else {
            submitButton.isSelected = false
            submitButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            submitButton.backgroundColor = UIColor.systemBackground
        }
    }
    
    @IBAction func issue(_ sender: UIButton) {
        let titleValueString = sender.currentTitle!
        iModel.mainIssue = titleValueString
        print(iModel.mainIssue)
        iModel.addSkinIssue(issue: iModel.mainIssue)
    }
    
    // Subissue: accepts all subissues from all main issues
    @IBAction func subIssue(_ sender: UIButton) {
        let titleValueString = sender.currentTitle!
        iModel.subIssue = titleValueString
        print(iModel.subIssue)
        iModel.addSkinIssue(issue: iModel.subIssue)
    }
    
}

//    @IBAction func massClickGreen(_ sender: Any) {
//
//        if!massButton.is
//        if !massButton.isSelected {
//            massButton.isSelected = true
//            massButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
//            massButton.backgroundColor = UIColor.green
//        }
//        else {
//            massButton.isSelected = false
//            massButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
//            massButton.backgroundColor = UIColor.systemBackground
//    }

//        @IBAction func Submit(_ sender: Any) {
//            iModel.gender = Gender.text ?? "N/A"
//            iModel.age = Int(Age.text ?? "0") ?? 0
//            iModel.skinType = SkinType.text ?? "N/A"
//            iModel.createCSV(iModel: iModel)
//        }
//        @IBOutlet weak var Gender: UITextField!
//        @IBOutlet weak var Age: UITextField!
//        @IBOutlet weak var SkinType: UITextField!
//    @IBAction func acne(_ sender: UIButton) {
//        issue = "Acne"
//        iModel.mainIssue = issue;
//        iModel.createCSV(iModel: iModel)
//        print(issue)
//    }
    
//    @IBAction func showMessage1(sender: UIButton) {
//
//        let alertController = UIAlertController(title: "You selected \(issue)", message: "We will now pick your acne type", preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//        present(alertController, animated: true, completion: nil)
//
//
//        nextState = true
//    }
//
//    @IBAction func showMessage2(sender: UIButton) {
//        issue = "Aging"
//        iModel.mainIssue = issue;
//        iModel.createCSV(iModel: iModel)
//        print(issue)
//
//
//        let alertController = UIAlertController(title: "You selected \(issue)", message: "Signs of aging are natural, but there are still ways to combat it.", preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//        present(alertController, animated: true, completion: nil)
//
//
//        nextState = true
//    }




