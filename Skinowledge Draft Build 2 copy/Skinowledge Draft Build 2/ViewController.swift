//
//  ViewController.swift
//  Skinowledge Draft Build 2
//
//  Created by Jessabelle Delen Ramos on 9/18/20.
//

//testing tanupa 
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
    
    @IBOutlet weak var teensButton: UIButton!
    
    @IBOutlet weak var youngAdultsButton: UIButton!
    
    @IBOutlet weak var adultsButton: UIButton!
    
    @IBOutlet weak var dryButton: UIButton!
    
    @IBOutlet weak var oilButton: UIButton!
    
    @IBOutlet weak var combinationButton: UIButton!
    
    @IBOutlet weak var sensitiveButton: UIButton!
    
    @IBOutlet weak var submitButton: UIButton!
    
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
    
    /**These funcs below will change the color of the button to green when pressed, and regular color when delesected
     **/
    @IBAction func buttonColorChange(_ sender: Any) {
        
        if !Male.isSelected {
            Male.isSelected = true
            Male.setTitleColor(UIColor.white, for: UIControl.State.normal)
            Male.backgroundColor = UIColor.green
        }
        else {
            Male.isSelected = false
            Male.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            Male.backgroundColor = UIColor.systemBackground
        }
        //Male.tintColor = UIColor.green
    }
    
    @IBAction func buttonColorChangeF(_ sender: Any) {
        if !Female.isSelected {
            Female.isSelected = true
            Female.setTitleColor(UIColor.white, for: UIControl.State.normal)
            Female.backgroundColor = UIColor.green
        }
        else {
            Female.isSelected = false
            Female.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            Female.backgroundColor = UIColor.systemBackground
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
        There are errors in teh dominant skin type selection that I will have to address later
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




