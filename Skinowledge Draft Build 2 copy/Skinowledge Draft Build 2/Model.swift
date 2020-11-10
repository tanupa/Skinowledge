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
    var name = ""
    var age = ""
    var skinType = ""
    var gender = ""
    var mainIssue = ""
    var subIssue = ""
    var csvText = ""//"Age,Gender,Skin Type\n"
    var subIngredients: [String] = []
    var descriptionResults = ""
}
extension Model{
    
    func createCSV(iModel: Model)
    {
        print(path)
        csvText = ""//"Age,Gender,Skin Type\n"
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
       //getProducts(ingredients: "mandelic acid")
    }

    
    // Adds selected skin issue (main, or sub) to the profile array
    // Current problem: if you click several subissues, it adds all of them instead of selecting just one
    // NEED TO add skin issue to the CSV file
    func addSkinIssue(iModel: Model)
    {
        //having issues, rewriting file over adding to it
        profile.append(mainIssue)
        print(profile)
        var newLine = ""
        for element in profile {
            newLine += (element as! String) + ","
        }
        print(csvText)
        csvText.append(newLine)
        print(csvText)
        //writing to the file
        do{
            try csvText.write(to: path!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Failed to create file")
            print("\(error)")
        }
    }
    
    func addSubIssue(iModel: Model)
     {
         issues.append(subIssue)
         iModel.setInfo(iModel: iModel)
        // how it works right now
        // csv is Blank before adding first subissue for some reason
        // this handles that and puts in the profile info
        if (csvText == "")
        {
            var newLine = ""
            for element in profile {
            newLine += (element as! String) + ","
            }
            csvText.append(newLine)
        }
        // after that, it appends as normal
        // verified that it doesn't do this after the 1st subissue has been added
        csvText.append(subIssue + ",")
        print(csvText)
        profile.append(subIssue)
        //writing to the file
        do{
            try csvText.write(to: path!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Failed to create file")
            print("\(error)")
        }
     }
    
    func setInfo(iModel: Model)
        {
            print("Profile", profile)
            print("Issues", issues)
            iModel.getIngredients(iModel: iModel)
    //        print("\(iModel.subIngredients)")
            print("\(iModel.subIssue)","Ingredients", subIngredients)
        }
    
    func getIngredients(iModel: Model)
      {
          let cysticIngredients: [String] = ["Salicylic Acid", "Benzoyl Peroxide","Retinoid"]
          let whiteheadIngredients: [String] = ["Retinoid", "Salicylic Acid"]
          let blackheadIngredients: [String] = ["Salicylic Acid", "Retinoid"]
          let papulesIngredients: [String] = ["Hydrocolloid Patches", "Retinoid","Salicylic Acid", "Benzoyl Peroxide"]
          let acneIngredientDictionary: [String: [String]] = ["Cystic": cysticIngredients, "Whiteheads": whiteheadIngredients, "Blackheads": blackheadIngredients, "Papules" : papulesIngredients]
          
          // subissue: ingredients to treat issue
          for (subissue, ingredientList) in acneIngredientDictionary {
              if (iModel.subIssue == subissue){
              //print("\(subissue): \(ingredientList)")
                  iModel.subIngredients = ingredientList
              }
          }
        
        
          iModel.getProducts(ingredients: subIngredients[0])
        
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



