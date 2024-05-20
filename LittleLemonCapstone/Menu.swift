//
//  Menu.swift
//  LittleLemonCapstone
//
//  Created by Sattam Bandar Albogami on 12/11/1445 AH.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack{
            Text("Little lemon resturant")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Riyadh")
                .font(.title2)
            Text("This resturant will sell the best dishes you want such as pizza burgers noodles etc")
            List{
                
            }
        }
    }
}

#Preview {
    Menu()
}
