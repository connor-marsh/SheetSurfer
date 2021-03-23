//
//  ContentView.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 3/16/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userInfo : UserInfo
    
    var body: some View {
        
        Group {
            if userInfo.isUserAuthenticated == .undefined {
                Text("Loading...")
            }
            else if userInfo.isUserAuthenticated == .signedOut {
                LoginView()
            }
            else {
                HomeView()
            }
        }.onAppear {
            self.userInfo.configureFirebaseStateDidChange()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
