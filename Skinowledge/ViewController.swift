//
//  ViewController.swift
//  Skinowledge Draft Build 2
//
//  Created by Jessabelle Delen Ramos on 9/18/20.
//

import UIKit

extension UIColor {

    static let myCustomColor = UIColor(red: 40, green: 69, blue: 122, alpha: 1)

}

class ViewController: UIViewController, UIPickerViewDelegate, UIScrollViewDelegate, UITextFieldDelegate {

    // removed all the UIDataPicker code
    
    var issue: String = ""
    var nextState = false
    
    var images:[String] = ["test1", "test2", "test3"]
    
    var frame = CGRect(x:0, y:0, width:0, height: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var myModel = Model()
    
    @IBOutlet weak var getStartedButton: UIButton!
    
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
        myModel.gender = titleValueString
        print(myModel.gender)
    }
     
    
    @IBOutlet weak var selectedAge: UILabel!
    
    @IBAction func ageTeens(_ sender: Any) {
        myModel.age = "13-18"
        print(myModel.age)
        
    }
    
    @IBAction func ageYA(_ sender: Any) {
        myModel.age = "18-30"
        if let text = ageLabel?.text {
            ageLabel.text = myModel.age + "YEARS"
        }
        print(myModel.age)
    }
    
    @IBAction func ageAdults(_ sender: Any) {
        myModel.age = "30+"
        print(myModel.age)
    }
    
    /**
            Consolidated all the skinType assignment functions into one function
     */
    @IBAction func skinType(_ sender: UIButton) {
        let titleValueString = sender.currentTitle!
        myModel.skinType = titleValueString
        print(myModel.skinType)
    }

    
    @IBAction func Submit(_ sender: Any) {
        myModel.createCSV(iModel: myModel)
    }
    
    /**These funcs below will change the color of the button to green when pressed, and regular color when delesected
     Code tutorial reference: https://stackoverflow.com/questions/31372684/swift-change-a-button-color-once-pressed
     **/

    @IBAction func buttonColorChange(_ sender: Any) {
        
        if !male.isSelected {
            male.isSelected = true
            male.setTitleColor(UIColor.white, for: UIControl.State.normal)
            //male.backgroundColor = UIColor.systemYellow
        }
        else {
            male.isSelected = false
            male.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            male.backgroundColor = UIColor.clear
        }
        //Male.tintColor = UIColor.green
    }
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/31372684/swift-change-a-button-color-once-pressed
     */
    @IBAction func buttonColorChangeF(_ sender: Any) {
        if !female.isSelected {
            female.isSelected = true
            female.setTitleColor(UIColor.white, for: UIControl.State.normal)
            //female.backgroundColor = UIColor.systemYellow
        }
        else {
            female.isSelected = false
            female.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            female.backgroundColor = UIColor.clear
        }
        //Female.tintColor = UIColor.green
    }
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/31372684/swift-change-a-button-color-once-pressed
     */
    @IBAction func teenButtonAction(_ sender: Any) {
        
        if !teensButton.isSelected {
            teensButton.isSelected = true
            teensButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            //teensButton.backgroundColor = UIColor.systemYellow
        }
        else {
            teensButton.isSelected = false
            teensButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            teensButton.backgroundColor = UIColor.clear
        }
    }
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/31372684/swift-change-a-button-color-once-pressed
     */
    @IBAction func youngAdultsButtonAction(_ sender: Any) {
        
        if !youngAdultsButton.isSelected {
            youngAdultsButton.isSelected = true
            youngAdultsButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            //youngAdultsButton.backgroundColor = UIColor.systemYellow
        }
        else {
            youngAdultsButton.isSelected = false
            youngAdultsButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            youngAdultsButton.backgroundColor = UIColor.clear
        }
    }
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/31372684/swift-change-a-button-color-once-pressed
     */
    @IBAction func adultsButtonAction(_ sender: Any) {
        if !adultsButton.isSelected {
            adultsButton.isSelected = true
            adultsButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            //adultsButton.backgroundColor = UIColor.systemYellow
        }
        else {
            adultsButton.isSelected = false
            adultsButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            adultsButton.backgroundColor = UIColor.clear
        }
    }
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/31372684/swift-change-a-button-color-once-pressed
     */
    @IBAction func dryButtonAction(_ sender: Any) {
       
        if !dryButton.isSelected {
            dryButton.isSelected = true
            dryButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            //dryButton.backgroundColor = UIColor.systemYellow
        }
        else {
            dryButton.isSelected = false
            dryButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            dryButton.backgroundColor = UIColor.clear
        }
    
    }
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/31372684/swift-change-a-button-color-once-pressed
     */
    @IBAction func oilyButtonAction(_ sender: Any) {
        
        if !oilButton.isSelected {
            oilButton.isSelected = true
            oilButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            //oilButton.backgroundColor = UIColor.systemYellow
        }
        else {
            oilButton.isSelected = false
            oilButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            oilButton.backgroundColor = UIColor.clear
        }
    }

    /**
     Code tutorial reference: https://stackoverflow.com/questions/31372684/swift-change-a-button-color-once-pressed
     */
    @IBAction func combinationButtonAction(_ sender: Any) {
        
        if !combinationButton.isSelected {
            combinationButton.isSelected = true
            combinationButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            //combinationButton.backgroundColor = UIColor.systemYellow
        }
        else {
            combinationButton.isSelected = false
            combinationButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            combinationButton.backgroundColor = UIColor.clear
        }
    }
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/31372684/swift-change-a-button-color-once-pressed
     */
    @IBAction func sensitiveButtonAction(_ sender: Any) {
        
        if !sensitiveButton.isSelected {
            sensitiveButton.isSelected = true
            sensitiveButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            //sensitiveButton.backgroundColor = UIColor.systemYellow
        }
        else {
            sensitiveButton.isSelected = false
            sensitiveButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            sensitiveButton.backgroundColor = UIColor.clear
        }
    }
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/31372684/swift-change-a-button-color-once-pressed
     */
    @IBAction func submitButtonAction(_ sender: Any) {
        
        if !submitButton.isSelected {
            submitButton.isSelected = true
            submitButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
            //submitButton.backgroundColor = UIColor.systemYellow
        }
        else {
            submitButton.isSelected = false
            submitButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
            submitButton.backgroundColor = UIColor.clear
        }
    }
    
    @IBAction func issue(_ sender: UIButton) {
        let titleValueString = sender.currentTitle!
        myModel.mainIssue = titleValueString
        print(myModel.mainIssue)
        myModel.addSkinIssue(iModel: myModel)
    }
    
    // Subissue: accepts all subissues from all main issues
    @IBAction func subIssue(_ sender: UIButton) {
        let titleValueString = sender.currentTitle!
        myModel.subIssue = titleValueString
        print(myModel.subIssue)
        myModel.addSubIssue(iModel: myModel)
//        iModel.addSkinIssue(issue: iModel.subIssue)
    }
    
    /**
     Code Tutorial Reference: https://www.youtube.com/watch?v=dIKK-SCkh_c&t=384s&ab_channel=GaryTokman
     */
    @IBAction func selection(_ sender: UIButton) {
        buttonCollection.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations:{
            button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBAction func massClicked(_ sender: UIButton) {
    }
        
    @IBOutlet weak var glowRecipe: UIButton!
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/25945324/swift-open-link-in-safari
     */
    @IBAction func glowRecipeClick(_ sender: UIButton) {
        
        var query = "Salicylic Acid"
        query = query.replacingOccurrences(of: " ", with: "+")
        
        guard let url = URL(string: "https://www.glowrecipe.com/search?q=" + query) else { return }
        UIApplication.shared.open(url)
    }
    
    @IBOutlet weak var ulta: UIButton!
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/25945324/swift-open-link-in-safari
     */
    @IBAction func ultaClick(_ sender: UIButton) {
        
        var query = "Salicylic Acid"
        query = query.replacingOccurrences(of: " ", with: "%20")
        
        guard let url = URL(string: "https://www.ulta.com/ulta/a/_/Ntt-" + query + "/Nty-1?Dy=1&ciSelector=searchResults") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBOutlet weak var sephora: UIButton!
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/25945324/swift-open-link-in-safari
     */
    @IBAction func sephoraClick(_ sender: UIButton) {
        var query = "Salicylic Acid"
        query = query.replacingOccurrences(of: " ", with: "%20")
        
        guard let url = URL(string: "https://www.sephora.com/search?keyword=" + query) else { return }
        UIApplication.shared.open(url)
    
    }
    
    @IBOutlet weak var inkeyList: UIButton!
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/25945324/swift-open-link-in-safari
     */
    @IBAction func inkeyListClick(_ sender: UIButton){
        var query = "Salicylic Acid"
        query = query.replacingOccurrences(of: " ", with: "+")
        
        guard let url = URL(string: "https://www.theinkeylist.com/search?q=" + query + "&type=product") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBOutlet weak var ordinary: UIButton!
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/25945324/swift-open-link-in-safari
     */
    @IBAction func ordinaryClick(_ sender: UIButton) {
        var query = "salicylic acid"
        query = query.replacingOccurrences(of: " ", with: "-")
        
        guard let url = URL(string: "https://www.sephora.com/product/the-ordinary-" + query + "-2-masque-P448530?om_mmc=ppc-GG_1380515476_53324488525_aud-310433652370:dsa-414040944380__385421813501_9061320_c&country_switch=us&lang=en&gclid=Cj0KCQiA48j9BRC-ARIsAMQu3WQ6BEng7F9HKg3lofBxjRaM4xGicV0UT-HL9uieYeNRm4eUCveQUqcaAkrWEALw_wcB&gclsrc=aw.ds") else { return }
        UIApplication.shared.open(url)
    
    }
    
    @IBOutlet weak var vaniCream: UIButton!
    
    /**
     Code tutorial reference: https://stackoverflow.com/questions/25945324/swift-open-link-in-safari
     */
    @IBAction func vaniCreamClick(_ sender: UIButton){
        
        guard let url = URL(string: "https://www.amazon.com/Vanicream-Gentle-Cleanser-sensitive-Dispenser/dp/B00QY1XZ4W") else { return }
        UIApplication.shared.open(url)
    }

    @IBOutlet weak var ageLabel: UILabel!

    @IBOutlet weak var sexLabel: UILabel!

    @IBOutlet weak var mainIssueLabel: UILabel!

    @IBOutlet weak var subIssueLabel: UILabel!

    @IBOutlet weak var mainIssueDescriptionLabel: UILabel!
    
    
    func updateProfile(iModel: Model)
    {
        //iModel.gender = "female"
        
        //print("Gender: " + "\(iModel.gender)")
       
        // this works!
      //  print(ageLabel?.text!)
      //  print(ageLabel?.text)
     //   if let text = sexLabel?.text {
            sexLabel.text = "\(myModel.gender) GENDER"
     //   }
     //   if let text = ageLabel?.text {
            ageLabel.text = myModel.age + "YEARS"
     //   }
        mainIssueLabel?.text = "main issue:   \(myModel.mainIssue)"
        subIssueLabel?.text = "sub-issue:   \(myModel.subIssue)"
        print(myModel.age + "dogsdogsdogs")
    }
    
/*    @IBOutlet var secondCollection: [UIButton]!
    
    
    @IBAction func selectionSecond(_ sender: UIButton) {
        
        buttonTapped.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations:{
            button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBOutlet var buttonTapped: [UIButton]!*/
    


/*    @IBAction func refreshProfile(_ sender: UIButton) {
        updateProfile(iModel: myModel)
        
    }*/
    
}

