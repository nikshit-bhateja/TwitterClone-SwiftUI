//
//  ContentView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu : Bool = false
    var body: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(showMenu)
                
            if showMenu{
                ZStack{
                    Color(.black)
                        .opacity(showMenu ? 0.25 : 0.0)
                        .ignoresSafeArea()
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
            }
            
            
            SideMenuView()
                .frame(width: 300)
                .background(showMenu ? Color.white : Color.clear)
                .offset(x: showMenu ? 0 : -300)
                
        }
        
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    withAnimation(.easeInOut) {
                        showMenu.toggle()
                    }
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.clockwise.circle.fill")
                }

            }
        }
        .onAppear{
            showMenu = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
