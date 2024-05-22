//
//  Home.swift
//  LittleLemonCapstone
//
//  Created by Sattam Bandar Albogami on 12/11/1445 AH.
//
import SwiftUI


struct Home: View {
    
    var body: some View {
        MainScreen()
            .navigationBarBackButtonHidden()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
#Preview {
    Home()
}
