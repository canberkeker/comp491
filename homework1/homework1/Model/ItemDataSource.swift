//
//  ItemDataSource.swift
//  homework1
//
//  Created by Canberk Eker on 23.11.2022.
//

import Foundation

struct ItemDataSource {
    
    private let itemArray: [Items]
    
    init() {
        itemArray = [
            Items(
                imageName: "case", name: "College of Administrative Sciences and Economics"
            ),
            Items(
                imageName: "engr", name: "College of Engineering"
            ),
            Items(
                imageName: "science", name: "College of Sciences"
            ),
            Items(
                imageName: "sos", name: "College of Social Sciences and Humanities"
            ),
            Items(
                imageName: "law", name: "School of Law"
            ),
            Items(
                imageName: "medicine", name: "School of Medicine"
            ),
            Items(
                imageName: "nursing", name: "School of Nursing"
            ),
            Items(
                imageName: "elc", name: "English Language Center"
            ),
        ]
    }
    
    func getItem (with imageName:String) -> Items? {
        return itemArray.first {
            $0.imageName == imageName
        }
    }
       
    func getNumberOfItems() -> Int {
        return itemArray.count
    }
        
    func getItem(for index: Int) -> Items? {
        guard index < itemArray.count else {
            return nil
            }
        return itemArray[index]
        }
}
