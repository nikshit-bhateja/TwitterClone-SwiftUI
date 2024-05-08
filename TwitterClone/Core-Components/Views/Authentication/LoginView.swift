//
//  LoginView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 12/08/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        // Parent container
        GeometryReader { geo in
            VStack {
                // header view
                AuthetnticationHeader(geo: geo.size, headerText1: "Hello.", headerText2: "Welcome Back")
                // To attach header with the top of superview.
                
                VStack(spacing: 40) {
                    CustomInputFields(imageName: "envelope",
                                      placeHolder: "Email",
                                      text: $email)
                    
                    CustomInputFields(imageName: "lock",
                                      placeHolder: "Password",
                                      text: $password)
                }
                .padding(.horizontal, geo.size.width * 0.1)
                .padding(.top, geo.size.height * 0.06)
                
                HStack{
                    Spacer()
                    
                    NavigationLink{
                        Text("open VC")
                    } label: {
                        Text("Forgot Password?")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.systemBlue))
                            .padding(.top)
                            .padding(.trailing, geo.size.width * 0.08)
                    }

                }
                
                NavigationLink {
                    
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: geo.size.width * 0.9, height: geo.size.height * 0.07)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding(.vertical)
                }
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)

                Spacer()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarHidden(true)
                } label: {
                    HStack{
                        Text("Don't have an account?")
                            .font(.footnote)
                        
                        Text("Sign Up")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                }
                .padding(.bottom, geo.size.height * 0.05)
                .foregroundColor(Color(.systemBlue))
                
            }
            .ignoresSafeArea()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
