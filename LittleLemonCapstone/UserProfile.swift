//
//  UserProfile.swift
//  LittleLemonCapstone
//
//  Created by Sattam Bandar Albogami on 12/11/1445 AH.
//
import SwiftUI

struct UserProfile: View {
    
   
    let firstName = UserDefaults.standard.string(forKey: kFirstName) ?? ""
    let lastName = UserDefaults.standard.string(forKey: KLastName) ?? ""
    let email = UserDefaults.standard.string(forKey: KEmail) ?? ""

    @Environment(\.presentationMode) var presentation

    var body: some View {
        VStack {
            Text("Personal Information")
                .font(.title)
                .padding()

            Image("profile-image-placeholder")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())

            Text("First Name: \(firstName)")
            Text("Last Name: \(lastName)")
            Text("Email: \(email)")

            Button("Logout") {
                UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                self.presentation.wrappedValue.dismiss()
            }
            .padding()

            Spacer()
        }
        .navigationTitle("User Profile")
    }
}

#Preview {
    UserProfile()
}
