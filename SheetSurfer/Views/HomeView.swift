//
//  HomeView.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 3/23/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct HomeView: View {
    
    @EnvironmentObject var userInfo : UserInfo
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                
                NavigationLink(destination: MusicStorageView()) {
                    
                    Text("Your Songs")
                    
                }
                
                
                Button(action: {
                    try! Auth.auth().signOut()
                    self.userInfo.isUserAuthenticated = .signedOut
                }) {
                    Text("Sign Out")
                        .frame(width: 100)
                        .padding(.vertical, 15)
                        .background(Color.green)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }.padding(.all, 10)
                
                .navigationBarTitle("SheetSurfer")
                .navigationBarItems(trailing:
                    Text("hi")
                )
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
