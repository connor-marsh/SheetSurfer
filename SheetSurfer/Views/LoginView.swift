//
//  LoginView.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 2/10/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    enum Action {
        case signUp, resetPW
    }
    
    @EnvironmentObject var userInfo : UserInfo
    @State var showSheet = false
    @State var action : Action?
    
    var body: some View {
        SignInWithEmailView(showSheet: $showSheet, action: $action)
            .sheet(isPresented: $showSheet) {
                if self.action == .signUp {
                    SignUpView().environmentObject(self.userInfo)
                }
                else {
                    ForgotPasswordView()
                }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
