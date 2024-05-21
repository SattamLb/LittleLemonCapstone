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
let kIsLoggedIn = "kIsLoggedIn"

struct Onboarding: View {
    @State var first_name = ""
    @State var last_name = ""
    @State var email = ""
    @State private var isLoggedIn = false // State variable to control navigation

    var body: some View {
        NavigationView { // Wrap the VStack in a NavigationView
            VStack {
                TextField("First Name ", text: $first_name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Last Name ", text: $last_name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Email ", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                NavigationLink(destination: Home(), isActive: $isLoggedIn) {
                    EmptyView()
                }

                Button("Register") {
                    if !first_name.isEmpty && !last_name.isEmpty && !email.isEmpty {
                        UserDefaults.standard.set(first_name, forKey: kFirstName)
                        UserDefaults.standard.set(last_name, forKey: KLastName)
                        UserDefaults.standard.set(email, forKey: KEmail)
                        UserDefaults.standard.set(true, forKey: kIsLoggedIn)
                        
                        isLoggedIn = true
                    } else {
                       
                    }
                }
                .padding()
            }
            .navigationTitle("Registration")
            .onAppear {
                if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                    isLoggedIn = true
                }
            }
        }
    }
}

#Preview {
    Onboarding()
}
