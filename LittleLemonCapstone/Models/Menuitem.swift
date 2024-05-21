//
//  MenuItem.swift
//  LittleLemonCapstone
//
//  Created by Sattam Bandar Albogami on 13/11/1445 AH.
//
import Foundation


struct Menuitem: Codable, Identifiable {
    var id = UUID()
    let title : String
    let descriptionDish: String
    let price: String
    let image: String
    let category: String
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case descriptionDish = "description"
        case price = "price"
        case image = "image"
        case category = "category"
    }
}
