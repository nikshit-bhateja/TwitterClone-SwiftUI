//
//  RegistrationView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 12/08/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullName = ""
    @State private var password = ""
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        GeometryReader { geo in
            VStack {
                AuthetnticationHeader(geo: geo.size, headerText1: "Get started.", headerText2: "Create your account")
                
                VStack(spacing: 44){
                    CustomInputFields(imageName: "envelope", placeHolder: "Email", text: $email)
                    
                    CustomInputFields(imageName: "person", placeHolder: "Username", text: $username)
                    
                    CustomInputFields(imageName: "person", placeHolder: "Full name", text: $fullName)
                    
                    CustomInputFields(imageName: "lock", placeHolder: "Password", text: $password)
                }
                .padding(.vertical, geo.size.height * 0.05)
                .padding(.horizontal, geo.size.width * 0.1)
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: geo.size.width * 0.9, height: geo.size.height * 0.07)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                })
            
                Spacer()
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    HStack{
                        Text("Already have an account?")
                            .font(.footnote)
                        
                        Text("Sign In")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                })
                .padding(.bottom, geo.size.height * 0.05)
            }
            .ignoresSafeArea()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
