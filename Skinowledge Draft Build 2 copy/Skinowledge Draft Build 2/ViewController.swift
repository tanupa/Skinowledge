//
//  ViewController.swift
//  Skinowledge Draft Build 2
//
//  Created by Jessabelle Delen Ramos on 9/18/20.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var picker: UIPickerView!
    
    // Number of columns of data
      func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 1
      }
      
      // The number of rows of data
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          return pickerData.count
      }
      
      // The data to return fopr the row and component (column) that's being passed in
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          return pickerData[row]
      }
    //this does not work yet
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           // This method is triggered whenever the user makes a change to the picker selection.
           // The parameter named row and component represents what was selected.
        var s = pickerData[component]
        iModel.skinType = s
        print(iModel.skinType)
        
    }
    
    var issue: String = ""
    var nextState = false
    
    var pickerData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.delegate = self
        self.picker.dataSource = self
        pickerData = ["Dry", "Oily", "Combination", "Sensitive"]
        // Do any additional setup after loading the view.
    }
    
    var iModel = Model()
    
    //Next step: find way to put this all in same method
    @IBOutlet weak var Male: UIButton!
    
    @IBOutlet weak var Female: UIButton!
    
    @IBAction func updateGendertoMale(_ sender: UIButton) {
        
        iModel.gender = Male.currentTitle!
        print(iModel.gender)
        
    }
    
    @IBAction func updateGendertoFemale(_ sender: UIButton) {
        
        iModel.gender = Female.currentTitle!
        print(iModel.gender)
        
    }
    
    //Next step: find way to put these all in the same method
    // maybe we could use a Stepper
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
    
    
    @IBAction func skinDry(_ sender: Any) {
        iModel.skinType = "Dry"
        print(iModel.skinType)
    }
    
    @IBAction func skinOily(_ sender: Any) {
        iModel.skinType = "Oily"
        print(iModel.skinType)
    }
    
    @IBAction func skinCombo(_ sender: Any) {
        iModel.skinType = "Combo"
        print(iModel.skinType)
    }
    
    
    @IBAction func skinSensitive(_ sender: Any)
    {
        iModel.skinType = "Sensitive"
        print(iModel.skinType)
    }
    
    @IBAction func Submit(_ sender: Any) {
        iModel.createCSV(iModel: iModel)
    }
    
    
    //trying to add alert
    @IBAction func acneMainIssue(_ sender: Any) {
        iModel.mainIssue = " Acne"
        print(iModel.mainIssue)
        
    }
    
    @IBAction func cysticIssue(_ sender: Any) {
        iModel.subIssue = "Cystic Acne"
        print(iModel.subIssue)
        
    }
}



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




