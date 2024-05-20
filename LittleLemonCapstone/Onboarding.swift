//
//  Onboarding() .swift
//  LittleLemonCapstone
//
//  Created by Sattam Bandar Albogami on 12/11/1445 AH.
//

import SwiftUI

let kFirstName = "first name key"
let KLastName = "last name key"
let KEmail = "email key"

struct Onboarding: View {
    @State var first_name = ""
    @State var last_name = ""
    @State var email = ""
    @State private var isLoggedIn = false // State variable to control navigation

    var body: some View {
        NavigationView { // Wrap the VStack in a NavigationView
            VStack {
                TextField("First Name ", text: $first_name)
                TextField("Last NAme ", text: $last_name)
                TextField("Email ", text: $email)
                NavigationLink(destination: Home(), isActive: $isLoggedIn) {
                    EmptyView()
                }

                Button("Register") {
                    if !first_name.isEmpty && !last_name.isEmpty && !email.isEmpty {
                        UserDefaults.standard.set(first_name, forKey: kFirstName)
                        UserDefaults.standard.set(last_name, forKey: KLastName)
                        UserDefaults.standard.set(email, forKey: KEmail)
                        
                        isLoggedIn = true
                    } else {
                       
                    }
                }
            }
            .navigationTitle("Registration")
        }
    }
}

#Preview {
    Onboarding()
}
