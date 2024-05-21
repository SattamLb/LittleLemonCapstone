//
//  MenuList.swift
//  LittleLemonCapstone
//
//  Created by Sattam Bandar Albogami on 13/11/1445 AH.
//
import Foundation
import CoreData

struct Menulist: Codable {
    let menu: [Menuitem]
    
    enum CodingKeys: String, CodingKey {
        case menu = "menu"
    }
    
    static func getMenuData(viewContext: NSManagedObjectContext) {
        PersistenceController.shared.clear()
        
        let url = URL(string: "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/menu.json")
        let request = URLRequest(url: url!)
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request) { data, response, error in
            if let data = data {
                let decoder = JSONDecoder()
                if let fullMenu = try? decoder.decode(Menulist.self, from: data) {
                    for dish in fullMenu.menu {
                        let newDish = Dish(context: viewContext)
                        newDish.title = dish.title
                        newDish.price = dish.price
                        newDish.descriptionDish = dish.descriptionDish
                        newDish.image = dish.image
                        newDish.category = dish.category
                    }
                    try? viewContext.save()
                } else {
                    print(error.debugDescription.description)
                }
            } else {
                print(error.debugDescription.description)
            }
        }
        dataTask.resume()
    }
}
