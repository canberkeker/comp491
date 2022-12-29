//
//  ItemDataSource.swift
//  homework1
//
//  Created by Canberk Eker on 23.11.2022.
//

import Foundation

struct CategoriesDataSource {
    
    private let categoriesArray: [Categories]
    
    init() {
        categoriesArray = [
            Categories(
                imageName: "book1", name: "Oğuz Atay - Tutunamayanlar"
            ),
            Categories(
                imageName: "book2", name: "Oğuz Atay - Tehlikeli Oyunlar"
            ),
            Categories(
                imageName: "book3", name: "Oğuz Atay - Oyunlarla Yaşayanlar"
            ),
            Categories(
                imageName: "book4", name: "Oğuz Atay - Korkuyu Beklerken"
            ),
            Categories(
                imageName: "book5", name: "Oğuz Atay - Bir Bilim Adamının Romanı"
            ),
            Categories(
                imageName: "book6", name: "Oğuz Atay - Günlük"
            ),
            Categories(
                imageName: "book7", name: "Oğuz Atay - Eylembilim"
            ),
            Categories(
                imageName: "book8", name: "Paulo Coelho - Simyacı"
            ),
            Categories(
                imageName: "book9", name: "Dostoyevski - Suç ve Ceza"
            ),
            Categories(
                imageName: "book10", name: "Dostoyevski - Kumarbaz"
            ),
        ]
    }
    
    func getCategories (with imageName:String) -> Categories? {
        return categoriesArray.first {
            $0.imageName == imageName
        }
    }
       
    func getNumberOfCategories() -> Int {
        return categoriesArray.count
    }
        
    func getCategories(for index: Int) -> Categories? {
        guard index < categoriesArray.count else {
            return nil
            }
        return categoriesArray[index]
        }
}
