//
//  Model.swift
//  Skinowledge Draft Build 2
//
//  Created by Jessabelle Delen Ramos on 9/19/20.
//
//test

import Foundation
import UIKit
var profile = [CustomStringConvertible]()
var issues = [String]()
let fileName = "Skin.csv"
let path = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName)
class Model{
    var age = ""
    var skinType = ""
    var gender = ""
    var mainIssue = ""
    var subIssue = ""
}
extension Model{
    
    func createCSV(iModel: Model)
    {
        print(path)
        var csvText = ""//"Age,Gender,Skin Type\n"
        let newLine = "\(iModel.age),\(iModel.gender), \(iModel.skinType)"//\n"
        csvText.append(newLine)
        //writing to the file
        do{
            try csvText.write(to: path!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Failed to create file")
            print("\(error)")
        }
        
    /**
         parsing the CSV into an array that can be of any data type#imageLiteral(resourceName: "simulator_screenshot_89B1D6B8-AB34-48ED-9780-D293E21854A0.png")
    */
        let parseFile: [[CustomStringConvertible]] = csvText
          .components(separatedBy: "\n")
          .map({$0.components(separatedBy: ",")
              .map({
                if let int = Int($0) {
                  return int
                } else if let double = Double($0) {
                  return double
                }
                return $0
              })
          })
        print(parseFile)
        
        /**
                Adding existing data into Profile array
                Following: Age, Gender, Skin type
                    Skin Issues are then added by other methods
         */
        profile.append(iModel.age)
        profile.append(iModel.gender)
        profile.append(iModel.skinType)
        
        // change this in the future
        getProducts(ingredients: "mandelic acid")
    }

    
    // Adds selected skin issue (main, or sub) to the profile array
    // Current problem: if you click several subissues, it adds all of them instead of selecting just one
    // NEED TO add skin issue to the CSV file
    func addSkinIssue(issue:String)
    {
        //having issues, rewriting file over adding to it
        profile.append(issue)
        issues.append(issue)
        print(profile)
        var csvText = ""
        let newLine = "\(issue)"
        csvText.append(newLine)
        //writing to the file
        do{
            try csvText.write(to: path!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Failed to create file")
            print("\(error)")
        }
    }
    
    
    /**
     2. setInfo- takes in array of the user, goes through every single button they clicked and runs getProducts()
     */
    
    /*func setInfo()
    {
        //var dictionary: [String: String] = ["Hyperpigmentation": "Mandelic Acid Product", "Hyperpigmentation": //"Azelic Acid Product", "Hyperpigmentation": "Tranexamic Acid"]
        //getProducts(ingredients: "Mandelic Acid")
       // getProducts(ingredients: "Azelic Acid")
       // getProducts(ingredients: "Tranexamic Acid")
    }*/
    
    /*
     3. find products, prints out 3 ingredients and displays the products
     */
    
    func getProducts(ingredients: String)
    {
        var query = ingredients
        query = query.replacingOccurrences(of: " ", with: "%20")
      //  let url = "https://www.sephora.com/?keyword=" + query
        //UIApplication.shared.open(URL(string: url)!, options: [:], completionHandler: nil)
        
        guard let url = URL(string: "https://www.sephora.com/search?keyword=" + query) else { return }
        UIApplication.shared.open(url)
        
//        [[NSWorkspace, sharedWorkspace], openURL,: [NSURL URLWithString:@"https://www.sephora.com/?keyword=" + query]];
        /*
        search it up on google, bring back links
 */
    }
    
}



/**
 was supposed to prevent duplication but failed
 */
/*let fileManger = FileManager.default
let doumentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString
let filePath = doumentDirectoryPath.appendingPathComponent("Skin.csv")
if fileManger.fileExists(atPath: filePath){
    do{
        try fileManger.removeItem(atPath: filePath)
    }catch let error {
        print("error occurred, here are the details:\n \(error)")
    }
}*/

