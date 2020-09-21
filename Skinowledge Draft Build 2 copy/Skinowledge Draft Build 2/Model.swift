//
//  Model.swift
//  Skinowledge Draft Build 2
//
//  Created by Jessabelle Delen Ramos on 9/19/20.
//


import Foundation

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
        let fileName = "Skin.csv"
        let path = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName)
        print(path)
        var csvText = "Age,Gender,Skin Type\n"
        let newLine = "\(iModel.age),\(iModel.gender), \(iModel.skinType)\n"
        csvText.append(newLine)
        
        do{
            try csvText.write(to: path!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Failed to create file")
            print("\(error)")
        }
    }
    
    //need to learn how to add to csv file?
}
